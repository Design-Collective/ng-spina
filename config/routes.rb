Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :menu, execpt: [:new, :edit]
    resources :pages, except: [:new, :edit]
    resources :articles, except: [:new, :edit]
    resources :members, except: [:new, :edit]
  end

  mount Spina::Engine => '/', as: 'spina'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
