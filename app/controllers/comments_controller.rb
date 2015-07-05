class CommentsController < ApplicationController

  before_action :set_snippet

  def index
  end

  def show
  end

  def new
  end

  def create
    @comment = @snippet.comments.build(comment_params)
    @comment.save
    redirect_to snippet_path(@snippet)
  end

  def edit
  end

  def destroy
    @comment = @snippet.comments.find(params[:id])
    @comment.destroy
  end

  private

  def set_snippet
    @snippet = Snippet.find(params[:snippet_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
