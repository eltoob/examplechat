class MessagesController < ApplicationController
  def index
  	last_checked_at = params[:last_checked_at]
  	@messages = Message.all.reverse
  	render json: @messages
  end

  def create
  	Message.create(params[:message])
  	redirect_to root_path
  end
end
