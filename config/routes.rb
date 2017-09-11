Rails.application.routes.draw do
  devise_for :users, :path=>'',
    :path_name=>{:sign_in=>'login', :sign_out=>'logout', :edit=>'profile'}
  root 'pages#home'
end
