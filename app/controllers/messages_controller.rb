class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      flash[:notice] = 'Email has been sent'
      redirect_to root_path
    else
      flash.now[:notice] = 'Please try again'
      render :new
    end
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :body)
    end
end
