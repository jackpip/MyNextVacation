class AddColumnsToSight < ActiveRecord::Migration
  def change
    add_column :sights, :place_id, :integer
    add_column :sights, :plan_id, :integer
  end
end
