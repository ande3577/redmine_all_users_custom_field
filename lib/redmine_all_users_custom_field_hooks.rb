module RedmineAllUsersCustomFields
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_custom_fields_form_upper_box, :partial => 'custom_fields/all_users'
    render_on :view_projects_form, :partial => 'projects/custom_fields_show_all_users'
  end
end
