class JournalPostsController < ApplicationController
  def index
    @journal_posts = JournalPost.all
  end

  def show
    @journal_post = JournalPost.find(params[:id])
  end

  def new
    @journal_post = JournalPost.new
  end

  def create
    @journal_post = current_user.journal_posts.new(journal_post_params)

    if @journal_post.save
      redirect_to journal_post_path(@journal_post), notice: "Post créé avec succès!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @journal_post = JournalPost.find(params[:id])
  end

  def update
    @journal_post = JournalPost.find(params[:id])
    if @journal_post.update(journal_post_params)
      redirect_to journal_post_path(@journal_post), notice: "Post mis à jour!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @journal_post = JournalPost.find(params[:id])
    @journal_post.destroy
    redirect_to  journal_posts_path, status: :see_other
  end

  private

  def journal_post_params
    params.require(:journal_post).permit(:content, :date)
  end
end
