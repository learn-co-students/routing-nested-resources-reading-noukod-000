Rails.application.routes.draw do

  #params[:author_id] #pp
  #once the user navigates to that #authors#show rails provides the #author_id key
  resources :authors, only: [:show] do 
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  get 'authors/:id/posts', to: 'authors#posts_index'
  get 'authors/:id/posts/"post_id', to: 'authors#post'

  root 'posts#index'
end
