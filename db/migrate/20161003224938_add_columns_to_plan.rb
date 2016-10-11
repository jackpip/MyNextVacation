class AddColumnsToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :user_id, :integer
    add_column :plans, :place_id, :integer
    add_column :plans, :sight_id, :integer
  end
end
