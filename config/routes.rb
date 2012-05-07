Franklin::Application.routes.draw do
  resources :pages do
    member do
      get 'home'
    end
  end

  root :to => "pages#home", :id => 'home'
end
