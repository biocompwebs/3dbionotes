class CreateIedbdictionaries < ActiveRecord::Migration
  def change
    create_table :iedbdictionaries do |t|
      t.string :uniprot
      t.string :gi

      t.timestamps null: false
    end
  end
end
