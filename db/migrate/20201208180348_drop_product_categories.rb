class DropProductCategories < ActiveRecord::Migration[6.0]
  def change
    def up
      drop_table :product_categories
    end

    def down
      fail ActiveRecord::IrreversibleMigration
    end
  end
end
