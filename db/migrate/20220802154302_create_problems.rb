class CreateProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :problems do |t|
      t.belongs_to :areas, index: true, foreign_key: true
      t.column :grade, :string
      t.column :description, :string
      t.column :name, :string
      t.column :rating, :int
      t.timestamps
    end
  end
end
