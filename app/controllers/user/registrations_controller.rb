#coding: utf-8

class User::RegistrationsController < ::Devise::RegistrationsController
  before_filter :authenticate_scope!, only: [:modify_password, :update_password]

  def modify_password 
  end

  def update_password 
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    if resource.update_with_password(params[resource_name])
      if is_navigational_format?
        if resource.respond_to?(:pending_reconfirmation?) && resource.pending_reconfirmation?
          flash_key = :update_needs_confirmation
        end
        set_flash_message :notice, flash_key || :updated
      end
      sign_in resource_name, resource, :bypass => true
      respond_with resource, :location => after_update_path_for(resource), notice: "修改密码成功"
    else
      clean_up_passwords resource
      render "modify_password"
    end
  end


end
