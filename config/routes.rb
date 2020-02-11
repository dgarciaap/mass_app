Rails.application.routes.draw do
	resources :users, only: [:new, :create]

	get 'login', to: 'sessions#new'

	#will be directed to create method in sessions controller
	post 'login', to: 'sessions#create'

	get 'welcome', to: 'sessions#welcome'
	
	get 'authorized', to: 'sessions#page_requires_login'

	get 'measure', to: 'calculators#index'

	post 'measure', to: 'calculators#measure'

	root 'sessions#welcome'

end
