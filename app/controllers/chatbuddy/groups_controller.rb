module Chatbuddy
    class GroupsController < ApplicationController
        def show 
            @group = Chatbuddy::Group.find(params["id"]);
            @messages = Chatbuddy::Message.where(group: @group)
            @members = @messages.map { |message| message.user }.uniq

            @pm_list = @members.filter { |user| user != current_user }.map { |m| [m.get_alias, m.id] }.unshift ["Select who to private message", "unselected"]

            render "show"
        end
    end
end