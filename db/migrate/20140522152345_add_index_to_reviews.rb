class AddIndexToReviews < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.index :description
    end
  end
end
