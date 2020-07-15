class CreateTodoCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :todo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
