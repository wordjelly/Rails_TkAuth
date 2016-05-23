require "rails_helper"
describe "Tokens API" do
  before(:each) do 
    User.delete_all
  end
  describe "POST /api/v1/auth" do
    it "creates a new user" do

      request_headers = {
        "Accept" => "application/json",
        "Content-Type" => "application/json"
      }
      post "/api/v1/auth", user_registration_params, request_headers
      body = JSON.parse(response.body)
      puts JSON.pretty_generate(body)
      expect(body["status"]).to eq("created")  # created
      expect(User.count).to eq 1
    end
  end
end