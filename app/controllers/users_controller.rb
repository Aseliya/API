# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: :create

  def create
    user = User.create(user_params)
  end

  private

  def user_params
    params.require(:users).permit(
      :full_name,
      :login,
      :signature,
      :password_digest,
      :email
    )
  end
end
