class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.float :total
      t.string :name
      t.integer :bill_id

      t.timestamps
    end
  end
end
