class RemoveTimestampsFromclassroom < ActiveRecord::Migration[7.1]
  def change
    remove_column :classrooms, :created_at, :datetime
    remove_column :classrooms, :updated_at, :datetime
  end
end
