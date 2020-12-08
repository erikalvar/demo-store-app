class DropCategories < ActiveRecord::Migration[6.0]
  def change
    def up
      drop_table :categories
    end
  
    def down
      fail ActiveRecord::IrreversibleMigration
    end
  end
end
