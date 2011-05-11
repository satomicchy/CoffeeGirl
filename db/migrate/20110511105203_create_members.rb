class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :twitter_id
      t.string :profile

      t.timestamps
    end
  end
end
