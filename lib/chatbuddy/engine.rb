module Chatbuddy
  class Engine < ::Rails::Engine
    require 'turbo-rails'

    isolate_namespace Chatbuddy
  end
end
