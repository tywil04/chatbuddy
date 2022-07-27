module Chatbuddy 
    class PrivateGroup < ApplicationRecord
        has_many :private_messages
    end
end