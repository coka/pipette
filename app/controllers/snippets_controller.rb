class SnippetsController < ApplicationController

  before_action :set_snippet, :only => [:show, :edit, :update, :destroy]

  def index
    @snippets = Snippet.all.order("created_at DESC")
  end

  def show
  end

  def new
    @snippet = current_user.snippets.build
  end

  def create
    @snippet = current_user.snippets.build(snippet_params)
    @snippet.save
    redirect_to snippets_path
  end

  def edit
  end

  def update
    @snippet.update(snippet_params)
    redirect_to snippets_path
  end

  def destroy
    @snippet.destroy
    redirect_to snippets_path
  end

  private

  def set_snippet
    @snippet = Snippet.find(params[:id])
  end

  def snippet_params
    params.require(:snippet).permit(:title, :content)
  end

end
