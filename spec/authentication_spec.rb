# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Authentication", type: :request do
  describe "POST /authenticate" do
    let!(:user) { create(:user) }
    let(:headers) { valid_headers.except("Authorization") }
    let(:valid_credentials) do
      {
        email: user.email,
        password: user.password
      }.to_json
    end
    let(:invalid_credentials) do
      {
        email: "234@mail.ru",
        password: "222222"
      }.to_json
    end

    context "When request is valid" do
      before { post "/authenticate", params: valid_credentials, headers: headers }

      it "returns an authentication token" do
        json = JSON.parse(response.body)
        expect(json["auth_token"]).not_to be_nil
      end
    end
        ## need to fix
        
    # context "When request is invalid" do
    #   before { post "/authenticate", params: invalid_credentials, headers: headers }

    #   it "returns a failure message" do
    #     expect {
    #       post :authenticate, format: "json"
    #     }.to raise_error(
    #       AuthenticationError, /invalid credentials/
    #     )
    #   end
    # end
  end
end
