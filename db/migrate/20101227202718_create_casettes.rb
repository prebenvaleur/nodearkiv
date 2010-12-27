class CreateCasettes < ActiveRecord::Migration
  def self.up
    create_table :casettes do |t|
      t.string :label
      t.integer :box_id

      t.timestamps
    end
  end

  def self.down
    drop_table :casettes
  end
end
