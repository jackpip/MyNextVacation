class AddColumnsToPlace < ActiveRecord::Migration
  def change
    add_column :places, :plan_id, :integer
  end
end
