class RemoveFieldFromTable < ActiveRecord::Migration[7.0]
  def up
    remove_column :registers, :registration_fee, :integer
  end
end
