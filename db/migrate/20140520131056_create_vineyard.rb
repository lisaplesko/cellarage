class CreateVineyard < ActiveRecord::Migration
  def change
    create_table :vineyards do |t|
      t.string :name
      t.string :address
      t.string :country
    end
  end
end
