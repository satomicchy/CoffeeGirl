class CreateCoffeespots < ActiveRecord::Migration
  def change
    create_table :coffeespots do |t|
      t.string :name
      t.string :address
      t.string :url
      t.string :memo

      t.timestamps
    end
  end
end
