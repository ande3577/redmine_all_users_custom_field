class AddAllUsersToCustomField < ActiveRecord::Migration
  def change
    add_column :custom_fields, :all_users, :boolean, :default => false 
  end
end
