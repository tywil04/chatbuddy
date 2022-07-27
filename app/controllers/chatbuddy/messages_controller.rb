module Chatbuddy
    class MessagesController < ApplicationController
        def create 
            if params[:message][:content].strip != ""
                @message = Chatbuddy::Message.create(user: current_user, group: Chatbuddy::Group.find(params[:group_id]), content: params[:message][:content].strip, state: "Unknown")
            end
        end
    end
end