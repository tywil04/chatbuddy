module Chatbuddy
    class MessagesController < ApplicationController
        def create 
            puts params
            if params[:message][:content].strip != ""
                @message = Chatbuddy::Message.create(user: current_user, chatbuddy_group_id: Chatbuddy::Group.find(params[:group_id]).id, content: params[:message][:content].strip, state: "Unknown")
            end
        end
    end
end