ActionController::Routing::Routes.draw do |map|
  map.resources :projects do |p|
    p.resources :stories
  end
end
