class MakeVineyardNameIndexed < ActiveRecord::Migration
  def change
    change_table :vineyards do |t|
      t.index :name
    end
  end
end
