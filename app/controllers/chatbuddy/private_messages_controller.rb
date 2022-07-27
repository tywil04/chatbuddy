module Chatbuddy 
    class PrivateMessagesController < ApplicationController
        def create 
            if params[:private_message][:content].strip != ""
                @message = PrivateMessage.create(user: current_user, private_group: PrivateGroup.find(params[:private_group_id]), content: params[:private_message][:content].strip, state: "Unknown")
            end
        end
    end    
end