class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t| # on cree une table users
      t.string :first_name # elle prend une valeur de type string qui qu'on nome "first_name"
      t.string :last_name # ici c'est pour stocker les last_name
      t.string :email # on lui cree une case qui vas stocker des emails
      t.timestamps
    end
  end
end
