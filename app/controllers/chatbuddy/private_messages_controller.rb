module Chatbuddy 
    class PrivateMessagesController < ApplicationController
        def create 
            if params[:private_message][:content].strip != ""
                @message = Chatbuddy::PrivateMessage.create(user: current_user, private_group: Chatbuddy::PrivateGroup.find(params[:private_group_id]), content: params[:private_message][:content].strip, state: "Unknown")
            end
        end
    end    
end