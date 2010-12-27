class CreateGreenBinders < ActiveRecord::Migration
  def self.up
    create_table :green_binders do |t|
      t.string :title
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :green_binders
  end
end
