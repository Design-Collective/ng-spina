Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
  end

  mount Spina::Engine => '/', as: 'spina'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
