class CreateComposers < ActiveRecord::Migration
  def self.up
    create_table :composers do |t|
      t.string :name
      t.integer :born_year
      t.integer :deceased_year

      t.timestamps
    end
  end

  def self.down
    drop_table :composers
  end
end
