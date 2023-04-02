class MessagesController < ApplicationController
  skip_before_action :authorized, only: [:create,:index,:destroy]
  def index
    render json: Message.all
  end

  def create
    message = Message.create(message_params)
    if message.valid?
      render json:{status: :created, message: message}
    else
      render json: {errors:"Validatin errors"}, status: :unprocessable_entity
    end
  end
  def destroy
    message = Message.find(params[:id])
    message.destroy
    head :no_content
  end

  private
  def message_params
    params.permit(:name,:email,:message)
  end
end
