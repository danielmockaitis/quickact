Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'login#login'
  match '/dashboard' => 'dashboard#dashboard', via: [:get, :post]
  match '/user/login' => 'users#login', via: [:get, :post]

  match '/media/facebook' => 'media#facebook_feed', via: [:get, :post]
  match '/media/twitter' => 'media#twitter_feed', via: [:get, :post]
  match '/media/news' => 'media#news_feed', via: [:get, :post]
end
