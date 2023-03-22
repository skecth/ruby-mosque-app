class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :activity_tittle
      t.date :activity_date
      t.time :activity_time
      t.string :activity_type
      #t.integer :registration_fee

      t.timestamps
    end
  end
end
