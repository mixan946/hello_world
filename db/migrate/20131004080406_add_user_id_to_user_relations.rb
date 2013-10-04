class AddUserIdToUserRelations < ActiveRecord::Migration
  def change
    add_column :user_relations, :user_id, :integer
  end
end
