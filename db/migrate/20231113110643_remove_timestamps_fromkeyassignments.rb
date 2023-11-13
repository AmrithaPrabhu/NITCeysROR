class RemoveTimestampsFromkeyassignments < ActiveRecord::Migration[7.1]
  def change
    remove_column :key_assignments, :created_at, :datetime
    remove_column :key_assignments, :updated_at, :datetime
  end
end
