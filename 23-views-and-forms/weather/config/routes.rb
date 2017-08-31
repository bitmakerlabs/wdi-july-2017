Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'weather' => 'conditions#index', as: 'weather_page'
  get 'weather/:city' => 'conditions#city', as: 'city_page'
  post 'weather/:city/submit_comment' => 'conditions#create', as: 'submit_comment'
end
