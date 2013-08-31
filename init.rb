require_dependency 'redmine_all_users_custom_field_patch'
require_dependency 'redmine_all_users_custom_field_hooks'

Redmine::Plugin.register :redmine_all_users_custom_field do
  name 'Redmine All Users Custom Field plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
