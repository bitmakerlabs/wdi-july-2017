class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :content
      t.datetime :completed_at

      t.timestamps
    end
  end
end
