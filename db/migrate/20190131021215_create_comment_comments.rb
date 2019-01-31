class CreateCommentComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comments, index: true
      t.text :message
      t.timestamps
    end
  end
end
