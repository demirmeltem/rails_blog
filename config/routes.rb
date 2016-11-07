Rails.application.routes.draw do

	get '/' => 'yazilar#index'
	get'/yazilar/index' => 'yazilar#index'
	get '/yazi/new' => "yazilar#new", as: :yazis
	post "/yazilar/index" => "yazilar#create"
	get '/yazi/:id' => "yazilar#show", as: :yazi
	get '/yazi/:id/edit' => "yazilar#edit", as: :edit_yazi
	patch '/yazi/:id' => 'yazilar#update'
	delete 'yazi/:id' => 'yazilar#destroy', as: :destroy_yazi
	get '/kayitol' => 'kullanicilar#new'
	resources :kullanicilar

	get '/girisyap' => 'oturumlar#new', as: :login
	post '/girisyap' => 'oturumlar#create'
end
