Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'contacts#new'
  get '/contact', to: 'contacts#new'

  #redirect everything to /contact.
  get '*path' => redirect('/contact')

end
