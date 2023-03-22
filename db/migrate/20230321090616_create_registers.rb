class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.time :registrationTime
      t.date :registrationDate

      t.timestamps
    end
  end
end
