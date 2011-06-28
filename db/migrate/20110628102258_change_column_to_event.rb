class ChangeColumnToEvent < ActiveRecord::Migration
  def change
    change_column :events, :date_on, :datetime
  end

end
