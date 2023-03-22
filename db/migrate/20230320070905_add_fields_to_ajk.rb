class AddFieldsToAjk < ActiveRecord::Migration[7.0]
  def change
    add_column :ajks, :username, :string
  end
end
