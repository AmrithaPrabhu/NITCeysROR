class CreateClassrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :classrooms do |t|
      t.string :room_id
      t.string :building
      t.integer :room_no
      t.boolean :is_available

      t.timestamps
    end
  end
end
