Franklin::Application.routes.draw do
  post "/subscribe" => "mail#subscribe"
  get "/unsubscribe" => "mail#unsubscribe"

  root :to => "pages#home"

  mount Resque::Server, :at => "/resque"
end
