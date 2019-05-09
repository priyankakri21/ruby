class PmessagesController < ApplicationController
 before_action do
    @conversation = Conversation.find_by(id: params[:conversation_id])
  end

  def index
    @pmessages = @conversation.pmessages
    @pmessage = @conversation.pmessages.new
    
  end
  def new
    @pmessage = @conversation.pmessages.new
  end

  def create
    @pmessage = @conversation.pmessages.new(pmessage_params)
    if @pmessage.save
      redirect_to conversation_pmessages_path(@conversation)
    end
  end
  private
  def pmessage_params
    params.require(:pmessage).permit(:body, :user_id)
  end
end
