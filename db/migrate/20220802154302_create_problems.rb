class CreateProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :problems do |t|
      t.column :grade, :string
      t.column :description, :string
      t.column :name, :string
      t.column :rating, :int
      # t.column :reference_id, :int
      # t.column :area_id, :int
      t.timestamps
    end
  end
end
