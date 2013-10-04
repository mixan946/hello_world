class RemoveColumnUserId < ActiveRecord::Migration
  def change
    remove_column :user_relations, :user_id
  end
end
