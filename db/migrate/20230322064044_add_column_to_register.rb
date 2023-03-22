class AddColumnToRegister < ActiveRecord::Migration[7.0]
  def change
    add_column :registers, :registration_fee, :integer
  end
end
