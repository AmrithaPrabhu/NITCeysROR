class CreateHalls < ActiveRecord::Migration[7.1]
  def change
    create_table :halls do |t|
      t.string :hall_id
      t.string :hall_name
      t.string :location

      t.timestamps
    end
  end
end
