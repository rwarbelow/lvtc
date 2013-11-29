module ApplicationHelper
	def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

	def current_admin
    current_user and current_user.admin
  end

  def current_admin?
    !!current_admin
  end
end


