module Chatbuddy
    class MessagesController < ApplicationController
        def create 
            if params[:message][:content].strip != ""
                @message = Chatbuddy::Message.create(user: current_user, chatbuddy_group_id: params[:group_id], content: params[:message][:content].strip, state: "Unknown")
            end

            render @message
        end
    end
end