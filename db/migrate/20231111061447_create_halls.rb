class CreateHalls < ActiveRecord::Migration[7.1]
  def change
    create_table :halls do |t|
      t.string :hall_id, primary_key: true
      t.string :hall_name
      t.string :location

      t.timestamps
    end
  end
end
