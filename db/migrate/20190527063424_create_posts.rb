class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :horse_name
      t.text :post_comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
