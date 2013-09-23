class AddTipToBills < ActiveRecord::Migration
  def change
    add_column :bills, :tip, :float
    add_column :bills, :tip_percent, :float
  end
end
