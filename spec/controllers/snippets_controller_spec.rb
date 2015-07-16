require "rails_helper" 

describe SnippetsController do

  let(:snippet) { double(Snippet).as_null_object }

  describe "GET index" do

    it "responds successfully" do
      get :index
      expect(response).to be_success
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns @snippets"

  end

  describe "GET show" do

    before do
      allow(Snippet).to receive(:find).and_return(snippet)
    end

    it "responds successfully" do
      get :show, :id => 1
      expect(response).to be_success
    end

    it "renders the show template" do
      get :show, :id => 1
      expect(response).to render_template("show")
    end

    it "assigns @comment"

    it "assigns @comments"

  end

  describe "GET new" do
    login_user

    it "responds successfully" do
      get :new
      expect(response).to be_success
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end

    it "assigns @snippet"

  end

  describe "POST create" do
    login_user

    before do
      allow(Snippet).to receive(:new).and_return(snippet)
    end

    it "creates a new snippet" do
      expect(Snippet).to receive(:new).with(:title => "placeholder title").and_return(snippet)
      post :create, :snippet => { "title" => "placeholder title" }
    end

    it "assigns @snippet" do
      post :create, :snippet => { "title" => "placeholder title" }
      expect(assigns[:snippet]).to eq(snippet)
    end

    it "saves the snippet" do
      expect(snippet).to receive(:save)
      post :create, :snippet => { "title" => "placeholder title" }
    end

    context "when the snippet saves successfully" do

      before do
        allow(snippet).to receive(:save).and_return(true)
      end

      it "redirects to the Snippets index" do
        post :create, :snippet => { "title" => "placeholder title" }
        expect(response).to redirect_to(:action => "index")
      end

    end

    context "when the snippet fails to save" do

      before do
        allow(snippet).to receive(:save).and_return(false)
      end

      it "renders the new template" do
        post :create, :snippet => { "title" => "placeholder title" }
        expect(response).to render_template("new")
      end

    end

  end

  describe "GET edit" do

    before do
      allow(Snippet).to receive(:find).and_return(snippet)
    end

    it "responds successfully" do
      get :edit, :id => 1
      expect(response).to be_success
    end

    it "renders the edit template" do
      get :edit, :id => 1
      expect(response).to render_template("edit")
    end

  end

  describe "PUT update" do
    login_user

    before do
      allow(Snippet).to receive(:find).and_return(snippet)
    end

    it "assigns @snippet" do
      put :update, :id => 1
      expect(assigns[:snippet]).to eq(snippet)
    end

    it "updates the snippet" do
      expect(snippet).to receive(:update)
      put :update, :id => 1
    end

    it "redirects to the Snippets index" do
      put :update, :id => 1
      expect(response).to redirect_to(:action => "index")
    end

  end

  describe "DELETE destroy" do

    it "assigns @snippet"

    it "destroys the snippet"

    it "redirects to the Snippets index"

  end

end
