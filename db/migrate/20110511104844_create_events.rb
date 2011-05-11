class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date_on
      t.string :information
      t.integer :coffeespot_id

      t.timestamps
    end
  end
end
