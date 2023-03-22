class AddColumnToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :registration_fee, :integer
  end
end
