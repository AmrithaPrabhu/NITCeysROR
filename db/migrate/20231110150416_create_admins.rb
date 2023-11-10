class CreateAdmins < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.string :admin_id, null: false
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
