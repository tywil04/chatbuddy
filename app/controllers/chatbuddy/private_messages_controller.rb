module Chatbuddy 
    class PrivateMessagesController < ApplicationController
        def create 
            if params[:private_message][:content].strip != ""
                @message = Chatbuddy::PrivateMessage.create(user: current_user, chatbuddy_private_group_id: Chatbuddy::PrivateGroup.find(params[:private_group_id]).id, content: params[:private_message][:content].strip, state: "Unknown")
            end
        end
    end    
end