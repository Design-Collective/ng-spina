Spina::Engine.routes.draw do
  namespace :admin do
    resources :case_studies, :clients
  end
end
