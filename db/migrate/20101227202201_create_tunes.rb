 class CreateTunes < ActiveRecord::Migration
  def self.up
    create_table :tunes do |t|
      t.string :title
      t.integer :composer_id
      #prv for tune_in_compilation
      t.integer :compilation_id
      #prv for tune_in_original
      t.integer :casette_id
      #prv for tune_copy
      t.integer :greenbinder_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tunes
  end
end
