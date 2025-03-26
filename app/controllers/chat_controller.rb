class ChatController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  require 'openai'

  def index
    render :index
  end

  def create
    user_input = params[:message]

    response = query_openai(user_input)

    chat_message = ChatMessage.create(user_message: user_input, ai_response: response)

    render json: { user_message: chat_message.user_message, ai_response: chat_message.ai_response }
  end

  private

  def query_openai(user_input)
    client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])
    messages = ChatMessage.last(5).map { |msg| [{ role: "user", content: msg.user_message }, { role: "assistant", content: msg.ai_response }] }.flatten.compact
    messages << {role: "user", content: user_input}

    begin
      response = client.chat(
        parameters: {
          model: "gpt-4",
          messages: messages,
          max_tokens: 150
        }
      )
      response.dig("choices", 0, "message", "content") || "Aucune réponse obtenue."
    rescue OpenAI::HTTPError => e
      Rails.logger.error "OpenAI API Error: #{e.message}"
      "Une erreur est survenue lors de la communication avec l'IA."
    rescue => e
        Rails.logger.error "unhandled error : #{e.message}"
        "Une erreur inattendue est survenue."
    end
  end
end
