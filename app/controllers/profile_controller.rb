class ProfileController < ApplicationController
  def index
    @user = current_account
  end
end
