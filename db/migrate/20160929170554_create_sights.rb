class CreateSights < ActiveRecord::Migration
  def change
    create_table :sights do |t|

      t.string :name
      t.string :address
      t.string :url
      t.string :website

      t.timestamps null: false
    end
  end
end
