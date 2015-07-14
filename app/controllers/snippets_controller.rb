class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all.order("created_at DESC")
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(params[:snippet])
    if @snippet.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

end
