module RedmineAllUsersCustomFieldPatch
  def self.included(base)
    unloadable
    
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
      alias_method_chain :possible_values_options, :all_users
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
    def all_users?
      return self.all_users
    end
  end
  
  def possible_values_options_with_all_users(obj=nil)
    if self.field_format == 'user' and self.all_users?
      return User.active.sort.collect {|u| [u.to_s, u.id.to_s]}
    end
    possible_values_options_without_all_users(obj)
  end
  
end

CustomField.send(:include, RedmineAllUsersCustomFieldPatch)