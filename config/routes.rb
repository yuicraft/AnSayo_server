Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/get_data', to: 'wiki#getting_data', constraints: { subdomain: 'ansayo' }
  post '/patch_data', to: 'wiki#patching_data', constraints: { subdomain: 'ansayo' }
end
