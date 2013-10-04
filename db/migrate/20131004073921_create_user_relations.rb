class CreateUserRelations < ActiveRecord::Migration
  def change
    create_table :user_relations, id: false do |t|
      t.integer :follower_id
      t.integer :following_id

      t.timestamps
    end
    add_index :user_relations, [:following_id, :follower_id]
  end
end
