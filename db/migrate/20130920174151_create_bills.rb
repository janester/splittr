class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.float :total
      t.float :tax

      t.timestamps
    end
  end
end
