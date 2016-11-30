class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.integer :micropost_id
      t.integer :user_id

      t.timestamps
    end
    add_index :goods, [:micropost_id, :user_id]
  end
end
