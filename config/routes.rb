Rails.application.routes.draw do

  devise_for :dogs, skip: [:passwords], path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: "signup"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#landing"
end
