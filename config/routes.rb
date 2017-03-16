Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "likes#index"
  # Routes for the Debt resource:
  # CREATE
  get "/debts/new", :controller => "debts", :action => "new"
  post "/create_debt", :controller => "debts", :action => "create"

  # READ
  get "/debts", :controller => "debts", :action => "index"
  get "/debts/:id", :controller => "debts", :action => "show"

  # UPDATE
  get "/debts/:id/edit", :controller => "debts", :action => "edit"
  post "/update_debt/:id", :controller => "debts", :action => "update"

  # DELETE
  get "/delete_debt/:id", :controller => "debts", :action => "destroy"
  #------------------------------

  # Routes for the Payment resource:
  # CREATE
  get "/payments/new", :controller => "payments", :action => "new"
  post "/create_payment", :controller => "payments", :action => "create"

  # READ
  get "/payments", :controller => "payments", :action => "index"
  get "/payments/:id", :controller => "payments", :action => "show"

  # UPDATE
  get "/payments/:id/edit", :controller => "payments", :action => "edit"
  post "/update_payment/:id", :controller => "payments", :action => "update"

  # DELETE
  get "/delete_payment/:id", :controller => "payments", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Payment_information resource:
  # CREATE
  get "/payment_informations/new", :controller => "payment_informations", :action => "new"
  post "/create_payment_information", :controller => "payment_informations", :action => "create"

  # READ
  get "/payment_informations", :controller => "payment_informations", :action => "index"
  get "/payment_informations/:id", :controller => "payment_informations", :action => "show"

  # UPDATE
  get "/payment_informations/:id/edit", :controller => "payment_informations", :action => "edit"
  post "/update_payment_information/:id", :controller => "payment_informations", :action => "update"

  # DELETE
  get "/delete_payment_information/:id", :controller => "payment_informations", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
