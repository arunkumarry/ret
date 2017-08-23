class CreateSubRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_regions do |t|
      t.string :name
      t.string :slug
      t.integer :parent_id
      t.belongs_to :region, foreign_key: true
      t.timestamps
    end
  end
end