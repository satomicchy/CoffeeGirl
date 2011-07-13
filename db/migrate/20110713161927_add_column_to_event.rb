class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :end_at, :datetime
  end
end
