class CreateKeyAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :key_assignments do |t|
      t.datetime :date
      t.time :taking_time
      t.string :user_id
      t.string :room_id
      t.integer :box_key
      t.boolean :is_returned

      t.timestamps
    end
  end
end
