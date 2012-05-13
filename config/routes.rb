Franklin::Application.routes.draw do
  post "/subscribe" => "mail#subscribe"
  get "/unsubscribe" => "mail#unsubscribe"

  root :to => "pages#home"
end
