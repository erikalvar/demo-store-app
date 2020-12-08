class RenameWeigthInProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :weigth, :weight
  end
end
