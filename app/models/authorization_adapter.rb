class AuthorizationAdapter < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    case subject

    when normalized(AdminUser)
      user.is_admin?
      
    else
      true
    end
  end

end