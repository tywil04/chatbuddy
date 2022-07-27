module Chatbuddy
    class Group < ApplicationRecord
        has_many :messages
    end
end