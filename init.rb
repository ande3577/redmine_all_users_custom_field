require_dependency 'redmine_all_users_custom_field_patch'
require_dependency 'redmine_all_users_project_patch'
require_dependency 'redmine_all_users_custom_field_hooks'


Redmine::Plugin.register :redmine_all_users_custom_field do
  
  project_module :custom_fields_show_all_users do
  end
  
  name 'Redmine All Users Custom Field plugin'
  author 'David S Anderson'
  description 'A plugin that allows showing all users in a user type custom field'
  version '0.0.1'
  url 'https://github.com/ande3577/redmine_all_users_custom_field'
  author_url 'https://github.com/ande3577/'
end
