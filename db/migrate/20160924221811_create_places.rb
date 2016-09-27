class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

      t.string :region
      t.string :city

      t.timestamps null: false
    end
  end
end
