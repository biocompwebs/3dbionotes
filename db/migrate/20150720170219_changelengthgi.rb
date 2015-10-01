class Changelengthgi < ActiveRecord::Migration
  def change
    change_column :iedbdictionaries, :gi, :string, :limit => 512
  end
end
