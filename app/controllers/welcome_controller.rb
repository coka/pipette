class WelcomeController < ApplicationController
  def index
    @snippets = Snippet.all
  end
end
