class ChangeCatergoryProductsToCategoryProducts < ActiveRecord::Migration[6.0]
  def change
    rename_table :catergory_products, :category_products
  end
end
