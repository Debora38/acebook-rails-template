require 'rails_helper'
require 'login_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 302 when not logged in" do
      get :new
      expect(response).to have_http_status(302)
    end

    it "responds with 200 when logged in" do
      user = User.create(email: "testuser@makers.com", first_name: "test", last_name: "user", password: "abc123")
      sign_in user
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(new_user_session_url)
    end

    it "cannot create a post when not logged in" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(Post.find_by(message: "Hello, world!")).to be(nil)
    end
  end

  describe "GET /" do
    it "responds with 302 when not logged in " do
      get :index
      expect(response).to have_http_status(302)
    end
  end
end
