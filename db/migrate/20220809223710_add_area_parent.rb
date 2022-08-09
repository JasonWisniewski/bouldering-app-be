class AddAreaParent < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :parent_area_id, :bigint
  end
end
