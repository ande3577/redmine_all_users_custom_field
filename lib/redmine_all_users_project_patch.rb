module RedmineAllUsersProjectPatch
  def self.included(base)
    unloadable
    
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
    	safe_attributes 'custom_fields_show_all_users'
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
    def custom_fields_show_all_users?
      return self.custom_fields_show_all_users
    end
  end
  
  def possible_values_options_with_all_users(obj=nil)
  end
  
end

Project.send(:include, RedmineAllUsersProjectPatch)
