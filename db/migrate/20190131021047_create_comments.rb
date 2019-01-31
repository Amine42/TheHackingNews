class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t| # on cree une table comments
      t.belongs_to :user, index: true # on stock l'id de l'user qui poste un commentaire
      t.belongs_to :message, index: true # on stock l'id du message qu'on commente
      t.text :message # on stock du text qui corespond au commentaire
      t.timestamps
    end
  end
end
