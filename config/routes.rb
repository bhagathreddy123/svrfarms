Rails.application.routes.draw do
 
  devise_for :admins
resources :contactus
resources :properties
 resources :home do 
   collection do
    get 'land'
    get 'land1'
    get 'about_us'
    get 'privacy_policy'
    get 'gallery'
    get 'image_slide'
    get 'jointventure'
    get 'map_options'
    get 'list_property'
    get 'help'
  end
end


root 'home#main_home'
end
