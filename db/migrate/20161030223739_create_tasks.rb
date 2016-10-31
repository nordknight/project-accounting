class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.string :status
      t.date :start_date
      t.date :due_date
      t.string :estimation

      t.timestamps null: false
    end
  end
end
