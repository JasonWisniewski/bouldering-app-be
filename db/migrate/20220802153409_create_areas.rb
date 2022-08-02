class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.column :name, :string
      t.column :look_up_code, :string
      t.timestamps
      # add_reference :parent_id, index: true
    end
  end
end
