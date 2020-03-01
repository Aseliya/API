# frozen_string_literal: true

require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  let!(:user) { create(:user) }
  let(:headers) { { "Authorization" => token_generator(user.id) } }
  let(:invalid_headers) { { "Authorization" => nil } }

  describe "#authorize_request" do
    context "when auth token is passed" do
      before { allow(request).to receive(:headers).and_return(headers) }

      it "sets the current user" do
        expect(subject.instance_eval { authenticate_request }).to eq(@current_user)
      end
    end
  end
end
