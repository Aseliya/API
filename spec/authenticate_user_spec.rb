require 'rails_helper'



# RSpec.describe Api::V1::NewsController, :type => :controller do
#     before do
#         @user = User.new(full_name: "FWEW", login: "111",email: "111@mail.ru", password: "123456")
#         get '/api/v1/news', {:Authorization => "Token 123"}
#     end

#     describe "#index" do
#     # user = create(:user)
#     # api_authorization_header token: @user.auth_token
#        before do
#          get :index, :format => :json
#        end

#        it 'expect give a collection of news' do
#         response.response_code.should == 401
#        end
#     end
# end


RSpec.describe AuthenticateUser do
    let(:user) { create(:user) }
    subject(:valid_auth_obj) { described_class.new(user.email, user.password) }
    # subject(:invalid_auth_obj) { described_class.new('foo', 'bar') }
    
    describe '#call' do
      context 'when valid credentials' do
          it 'returns an auth token' do
              token = valid_auth_obj.call
              expect(token).not_to be_nil
          end
      end
      
      # # raise Authentication Error when invalid request
      # context 'when invalid credentials' do
      #     it 'raises an authentication error' do
      #       expect { invalid_auth_obj.call }
      #     .to raise_error(
      #       ExceptionHandler::AuthenticationError,
      #       /Invalid credentials/
      #     )
      #     end
      # end
  end
end