class SnippetsController < ApplicationController

  def create
    snippet = Snippet.new(params[:snippet])
    if snippet.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

end
