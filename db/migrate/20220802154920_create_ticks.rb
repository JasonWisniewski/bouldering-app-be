class CreateTicks < ActiveRecord::Migration[7.0]
  def change
    create_table :ticks do |t|
      t.belongs_to :user, index: {unique: true}, foreign_key: true
      t.column :user_id, :int
      t.column :problem_id, :int

      t.timestamps
    end
  end
end
