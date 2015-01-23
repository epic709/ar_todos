class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |x|
      x.boolean :complete
      x.text    :desc
      x.timestamps null: false
    end
  end
end