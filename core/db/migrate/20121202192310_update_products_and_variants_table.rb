class UpdateProductsAndVariantsTable < ActiveRecord::Migration
  def up
    add_column :spree_products, :sku, :string, :default => '', :null => false
    add_column :spree_products, :price, :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
    add_column :spree_products, :cost_price, :decimal, :precision => 8, :scale => 2
    add_column :spree_products_taxons, :id, :primary_key
    add_column :spree_products_taxons, :position, :integer, :default => 0
    add_index :spree_variants, [:sku], :name => 'index_spree_variants_on_sku'
  end

  def down
    remove_index :spree_variants, :name => 'index_spree_variants_on_sku'
    remove_column :spree_products_taxons, :position
    remove_column :spree_products_taxons, :id
    remove_column :spree_products, :cost_price
    remove_column :spree_products, :price
    remove_column :spree_products, :sku
  end
end
