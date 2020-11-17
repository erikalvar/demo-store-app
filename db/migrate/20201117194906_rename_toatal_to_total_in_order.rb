class RenameToatalToTotalInOrder < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :toatal, :total
  end
end
