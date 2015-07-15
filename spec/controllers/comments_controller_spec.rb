require "rails_helper"

describe CommentsController do

  describe "POST create" do
    login_user

    it "creates a new comment"

    it "assigns @comment"

    it "associates a user with the comment"

    it "saves the comment"

    context "when the comment saves successfully" do
      
      it "redirects to the associated snippet"

    end

    context "when the comment fails to save" do

      it "rerenders the comment form"

    end

  end

  describe "DELETE destroy" do
    login_user

    it "assigns @comment"

    it "deletes the comment"

  end

end
