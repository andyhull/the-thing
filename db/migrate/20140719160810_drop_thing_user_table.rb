class DropThingUserTable < ActiveRecord::Migration
  def change
     drop_table :things_users
  end
end
