class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @messages = Message.all
  end
end
