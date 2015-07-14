class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all.order("created_at DESC")
  end

  def new
    @snippet = current_user.snippets.build
  end

  def create
    @snippet = current_user.snippets.build(params[:snippet])
    if @snippet.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

end
