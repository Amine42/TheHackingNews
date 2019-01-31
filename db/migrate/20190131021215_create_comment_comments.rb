class CreateCommentComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_comments do |t| # on cree une table comment_comments
      t.belongs_to :user, index: true # on fait de la place pour stocker l'id de l'user qui commente un commentaire
      t.belongs_to :comments, index: true # on fait de la place pour stocker l'id du commentaire qu'on commente
      t.text :message # on stock le commentaire
      t.timestamps
    end
  end
end
