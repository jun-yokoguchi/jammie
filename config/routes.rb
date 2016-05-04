Rails.application.routes.draw do
  devise_for :users
  get 'users/new'

  root to: 'top_pages#home'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

 
end
