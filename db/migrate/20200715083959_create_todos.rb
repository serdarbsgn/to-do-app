class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :is_general

      t.timestamps
    end
  end
end
