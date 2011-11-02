class ChangeColumntypeReport < ActiveRecord::Migration
  def change
    change_column :reports, :report, :text, :limit => nil

  end
end
