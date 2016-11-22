class DestroyAdminForUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :hobby
  end
end
