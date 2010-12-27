class CreateCompilations < ActiveRecord::Migration
  def self.up
    create_table :compilations do |t|
      t.string :title
      t.integer :casette_id

      t.timestamps
    end
  end

  def self.down
    drop_table :compilations
  end
end
