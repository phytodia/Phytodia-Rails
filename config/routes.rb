Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  scope "/:locale" do
    root to: "pages#home"

    get "/laboratoire-plantes", to: "pages#plantes"
    get "/laboratoire-analyse-recherche-developpement", to: "pages#analyses"
    get "/laboratoire-creation-cosmetique", to: "pages#cosmetologie"
    get "/nos-marques-actifs", to: "pages#marques"
    get "/a-propos", to: "pages#propos"
    get "/blog", to: "pages#blog"
    get "contact", to: "pages#contact"
  end

end
