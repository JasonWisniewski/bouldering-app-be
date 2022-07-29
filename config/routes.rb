Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  def change
    create_table :users do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
