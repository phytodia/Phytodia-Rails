class MessagesController < ApplicationController
  def index
  end
  def show
  end
  def new
    @message = Message.new
    fail
  end
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path
  end
  def edit
  end
  def update
  end
  def destroy
  end

  def message_params
    params.require(:message).permit(:lastname,:firstname,:content,:tel,:email)
  end
end
