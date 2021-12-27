Rails.application.routes.draw do
  mount Client::Engine => "/client"
end
