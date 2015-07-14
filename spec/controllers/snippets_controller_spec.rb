require "rails_helper" 

describe SnippetsController do

  describe "POST create" do

    let(:snippet) { double(Snippet).as_null_object }

    before do
      allow(Snippet).to receive(:new).and_return(snippet)
    end

    it "creates a new snippet" do
      expect(Snippet).to receive(:new).with("title" => "placeholder title").and_return(snippet)
      post :create, :snippet => { "title" => "placeholder title" }
    end

    it "saves the snippet" do
      expect(snippet).to receive(:save)
      post :create
    end

    context "when the snippet saves successfully" do

      before do
        allow(snippet).to receive(:save).and_return(true)
      end

      it "redirects to the Snippets index" do
        post :create
        expect(response).to redirect_to(:action => "index")
      end

    end

    context "when the snippet fails to save" do

      before do
        allow(snippet).to receive(:save).and_return(false)
      end

      it "assigns @snippet" do
        post :create
        expect(assigns[:snippet]).to eq(snippet)
      end

      it "renders the new template" do
        post :create
        expect(response).to render_template("new")
      end

    end

  end

end
