Rails.application.routes.draw do
  devise_for :user, :controllers => {registrations: 'custom_devise/registrations' }, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end

  root to: 'home#index'

  get 'dashboard' => 'user/dashboard#index'
  get 'transaction' => 'user/transactions#index'
  get 'account' => 'user/accounts#index'
end
