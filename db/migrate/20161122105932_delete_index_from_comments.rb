class DeleteIndexFromComments < ActiveRecord::Migration
  def down
    remove_index :comments, :post_id
  end
end
