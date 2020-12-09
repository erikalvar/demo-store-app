class ChangesWeightAndLengthToDecimalsInProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :weight, :decimal, :precision => 8, :scale => 2
    change_column :products, :length, :decimal, :precision => 8, :scale => 2
  end
end
