class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :report
      t.integer :member_id
      t.integer :event_id

      t.timestamps
    end
  end
end
