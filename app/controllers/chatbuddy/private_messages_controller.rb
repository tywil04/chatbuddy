module Chatbuddy 
    class PrivateMessagesController < ApplicationController
        def create 
            if params[:private_message][:content].strip != "" and in_private_group current_user
                @message = Chatbuddy::PrivateMessage.create(user: current_user, chatbuddy_private_group_id: Chatbuddy::PrivateGroup.find(params[:private_group_id]).id, content: params[:private_message][:content].strip, state: "Unknown")
            end
        end
    end    

    private 

    def in_private_group user
        user1 user2 = @group.users_string.split("_")
        user1 = User.find(@user1)
        user2 = User.find(@user2)
        return user1 == user or user2 == user
    end
end