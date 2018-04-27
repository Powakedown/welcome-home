class MessengerController < ApplicationController
  before_action :message_from_params, only: %i[new_mail]
  skip_before_action :authenticate_user!, only: %i[new_mail]

  def new_mail
    @params = params[:message]
    UserMailer.new_mail(@params).deliver_now
  end

  private

  def message_from_params
    @message = params_message
  end

  def params_message
    params.require(:message).permit(:email, :title, :message)
  end
end
