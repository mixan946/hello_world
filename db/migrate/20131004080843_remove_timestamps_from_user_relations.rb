class RemoveTimestampsFromUserRelations < ActiveRecord::Migration
  def change
    remove_column :user_relations, :created_at
    remove_column :user_relations, :updated_at
  end
end
