class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :author_id
      t.integer :post_id

      t.timestamps
    end
    add_foreign_key :likes, :users, column: :author_id
    add_foreign_key :likes, :posts, column: :post_id
  end
  INSERT INTO likes (id, author_id, post_id, created_at, updated_at)
  VALUES (1, 1, 1, '2021-12-14', '2021-12-14');
end
