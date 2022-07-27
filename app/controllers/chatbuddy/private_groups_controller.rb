module Chatbuddy
    class PrivateGroupsController < ApplicationController
        def create 
            if params[:private_group][:pm_user_id] != "unselected"
                pm_user = User.find(params[:private_group][:pm_user_id]);
                users_string = generate_users_string current_user, pm_user

                if not Chatbuddy::PrivateGroup.find_by(users_string: users_string)
                    privategroup = Chatbuddy::PrivateGroup.create(users_string: users_string)
                else 
                    privategroup = Chatbuddy::PrivateGroup.find_by(users_string: users_string)
                end

                respond_to do |format|
                    format.html { redirect_to privategroup }
                end
            end
        end

        def show 
            @group = Chatbuddy::PrivateGroup.find(params["id"]);
            @messages = Chatbuddy::PrivateMessage.where(private_group: @group)

            @user1, @user2 = @group.users_string.split("_")
            @user1 = User.find(@user1)
            @user2 = User.find(@user2)

            @title = @user1 == current_user ? @user2.get_alias : @user1.get_alias

            render "show"
        end
        
        private 

        def generate_users_string user1, user2
            temp = [user1, user2].sort 
            return temp[0].id + "_" + temp[1].id
        end
    end
end