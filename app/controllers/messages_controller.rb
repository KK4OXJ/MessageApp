class MessagesController < ApplicationController
  
  def index
    @messages = Message.find(:all, :order => 'created_at')
  end
  
  def show
    @message = Message.find(params[:id])
  end
  
  def destroy
    message = Message.find(params[:id])
    message.destroy
    redirect_to messages_path
  end
  
  def new
    @message = Message.new
  end
  
  def create 
    @message = Message.new(message_params) 
    if @message.save 
      redirect_to '/messages' 
    else 
      render 'new' 
    end
  end
  
  def edit
    @message = Message.find(params[:id])
  end
  
  def update
    @message = Message.find(params[:id])
    
    if @message.update_attributes(message_params)
      redirect_to(:action => 'show', :id => @message.id)
    else
      render 'edit'
    end
  end
  
  private
    def message_params
      params.require(:message).permit(:content)
    end
  
end
