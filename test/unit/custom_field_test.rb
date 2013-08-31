require File.expand_path('../../test_helper', __FILE__)

class CustomFieldTest < ActiveSupport::TestCase
  fixtures :projects
  fixtures :members
  fixtures :issues 
  fixtures :trackers
  fixtures :users
  fixtures :enabled_modules
  
  def setup
    @non_member = User.logged.first
    
    @project = Project.first
    @member = @project.users.first
    @custom_field = IssueCustomField.new(:name => 'custom_field', :field_format => 'user', :searchable => true)
    assert @custom_field.save
  end
  
  def test_custom_field_includes_member
    assert @custom_field.possible_values_options(@project).collect(&:last).include?(@member.id.to_s)
  end
  
  def test_all_users_set_to_false
    assert !@custom_field.possible_values_options(@project).collect(&:last).include?(@non_member.id.to_s)
  end
  
  def test_all_users_set_to_true
    @custom_field.all_users = true
    assert @custom_field.save
    assert @custom_field.possible_values_options(@project).collect(&:last).include?(@non_member.id.to_s)
  end
  
  def test_set_all_users_project_setting_to_true
    @project.custom_fields_show_all_users = true
    @project.save
    assert @custom_field.possible_values_options(@project).collect(&:last).include?(@non_member.id.to_s)
  end
  
end
