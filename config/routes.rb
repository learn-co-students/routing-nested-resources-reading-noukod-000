Rails.application.routes.draw do

  resources :authors do
  resources :posts do
    resources :comments
  end
end
# @post = Post.find(params[:id])
# @post.author

end
