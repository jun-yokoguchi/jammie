Rails.application.routes.draw do
  root to: 'top_pages#home'
  
  devise_for :users
  get 'users/new'
  
  resources :users, only:[:index, :show, :edit, :update]

  
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

 
end
