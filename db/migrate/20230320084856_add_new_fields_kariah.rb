class AddNewFieldsKariah < ActiveRecord::Migration[7.0]
  def change
    add_column :kariahs, :username, :string
    add_column :kariahs, :phoneNo, :string
    add_column :kariahs, :address, :string
  end
end
