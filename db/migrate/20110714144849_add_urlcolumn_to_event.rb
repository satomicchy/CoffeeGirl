class AddUrlcolumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :registry_url, :string
  end
end
