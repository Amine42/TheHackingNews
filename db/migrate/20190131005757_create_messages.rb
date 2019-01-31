class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t| # on cree une class messages
      t.belongs_to :user, index: true # on fait un lien entre le message et la table user
      t.string :title # on cree un espace de stockage pour les titres
      t.string :url # on cree un espace de stockage pour les emails
      t.timestamps
    end
  end
end
