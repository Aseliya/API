# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:full_name,
                                 :email,
                                 :login,
                                 :signature,
                                 :password_digest)
  end
end
