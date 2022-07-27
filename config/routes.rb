Chatbuddy::Engine.routes.draw do
    resources :groups do 
        resources :messages
    end
    
    resources :private_groups do 
        resources :private_messages
    end
end
  