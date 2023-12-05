class MessagesController < ApplicationController
  def index
  end

  params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
end
