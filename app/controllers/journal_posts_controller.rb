class JournalPostsController < ApplicationController
  def index
    journal_posts = JournalPost.all
  end

  def new
    journal_post = JournalPost.new
  end
  def create
    journal_post = JournalPost.new(journal_post_params)
    journal_post.user = current_user
    if journal_post.save
      redirect_to journal_post_path(journal_post)
    else
      render :new
    end
  end

  def show
    journal_posts = JournalPost.find(params[:id])
  end

  private

  def journal_post_params
    params.require(:journal_post).permit(:content, :date)
  end
end
