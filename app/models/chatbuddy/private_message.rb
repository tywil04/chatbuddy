module Chatbuddy
  class PrivateMessage < ApplicationRecord
    belongs_to :user
    belongs_to :private_group
  
    after_create { broadcast_append_to "private_messages" }
  end
end