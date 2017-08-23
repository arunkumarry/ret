class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :slug
      t.integer :parent_id
      t.belongs_to :state, foreign_key: true

      t.timestamps
    end
  end
end