Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# routes for customer api
  post '/fuber/cab_booking', to: 'api/v1/customer#cab_booking', as: :fuber_cab_booking
  get 'fuber/find_near_by_cab', to: 'api/v1/customer#find_near_by_cab', as: :fuber_find_near_by_cab

# routes for cab controller
  post '/fuber/end_ride', to: 'api/v1/cab#end_ride', as: :fuber_end_ride
   
end
