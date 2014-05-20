class AddIndexToWine < ActiveRecord::Migration
  def change
    change_table :wines do |t|
      t.references :user, index: true
    end
  end
end
