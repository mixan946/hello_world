class ChangeUsersRelationsIndex < ActiveRecord::Migration
  def change
    #remove_index :user_relations, [:following_id, :follower_id]
    UserRelation.delete_all
    add_index :user_relations, [:following_id, :follower_id], unique: true
  end
end
