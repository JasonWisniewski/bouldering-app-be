class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.column :name, :string
      t.column :lookup_code, :string
      t.timestamps
    end
  end
end
