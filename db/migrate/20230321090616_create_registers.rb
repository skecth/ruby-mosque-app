class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.references :qctivity, null: false, foreign_key: true
      t.references :register, null: false, foreign_key: true
      t.time :registrationTime
      t.date :registrationDate

      t.timestamps
    end
  end
end
