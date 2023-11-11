class CreateHallbookings < ActiveRecord::Migration[7.1]
  def change
    create_table :hallbookings do |t|
      t.date :date_
      t.time :start_time
      t.time :end_time
      t.string :hall_id
      t.string :admin_id
      t.integer :is_approved
      t.string :reason

      t.timestamps
    end
  end
end
