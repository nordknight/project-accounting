class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :Comment
      t.string :content
      t.string :commenter
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
