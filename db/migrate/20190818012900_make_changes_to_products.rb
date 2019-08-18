class MakeChangesToProducts < ActiveRecord::Migration[6.0]
  def change
    #changing to string to text 
     change_column :products, :description, :text
     change_column :products, :price, :decimal, precision: 5, scale: 2

  end
end
