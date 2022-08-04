module Chatbuddy
    class Group < ApplicationRecord
        has_many :chatbuddy_messages
    end
end