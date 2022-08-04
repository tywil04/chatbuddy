module Chatbuddy
  class PrivateMessage < ApplicationRecord
    belongs_to :user
    belongs_to :chatbuddy_private_group, class_name: "PrivateGroup"
  
    after_create_commit { broadcast_append_to "chatbuddy_private_messages" }
  end
end