class DropTableRegister < ActiveRecord::Migration[7.0]
  def change
    drop_table :registers
  end
  
end
