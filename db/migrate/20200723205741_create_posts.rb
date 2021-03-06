class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :post
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :posts,
                    :users,
                    column: :user_id
  end
end
