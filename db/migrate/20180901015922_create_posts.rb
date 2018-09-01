class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :stuff_name
      t.text :description
      t.text :comment
      t.integer :user_id
      t.boolean :success

      t.timestamps
    end
  end
end
