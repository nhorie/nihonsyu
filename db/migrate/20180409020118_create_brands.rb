class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.integer :prefecture_id
      t.integer :type_id, limit: 1
      t.string :comment
      t.integer :evaluation, limit: 2

      t.timestamps
    end
  end
end
