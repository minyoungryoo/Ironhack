class AddProductIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_id, :integer
  end
end
