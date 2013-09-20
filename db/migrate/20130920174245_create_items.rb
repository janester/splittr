class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :price
      t.string :name
      t.integer :person_id

      t.timestamps
    end
  end
end
