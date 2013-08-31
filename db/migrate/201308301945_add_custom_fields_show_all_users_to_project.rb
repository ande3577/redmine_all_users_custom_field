class AddCustomFieldsShowAllUsersToProject < ActiveRecord::Migration
  def change
    add_column :projects, :custom_fields_show_all_users, :boolean, :default => false 
  end
end
