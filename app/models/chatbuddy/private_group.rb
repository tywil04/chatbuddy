module Chatbuddy 
    class PrivateGroup < ApplicationRecord
        has_many :chatbuddy_private_messages
    end
end