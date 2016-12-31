Rails.application.routes.draw do
  mount Spina::Engine => '/admin', as: 'spina'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
