class Changelengthgi2 < ActiveRecord::Migration
  def change
    change_column :iedbdictionaries, :gi, :text
  end
end
