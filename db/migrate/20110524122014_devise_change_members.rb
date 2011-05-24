class DeviseChangeMembers < ActiveRecord::Migration
  def up
    change_table(:members) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
    end

    add_index :members, :email,                :unique => true
    add_index :members, :reset_password_token, :unique => true
  end

  def down
  end
end
