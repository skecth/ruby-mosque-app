class AddUserIdToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :ajk_id, :integer
    add_index :activities, :ajk_id
  end
end
