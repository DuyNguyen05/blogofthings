module SessionsHelper
  def logged_in?
    session[:user_id].present?
  end

  def current_user
    User.find_by(id: session[:user_id]) if logged_in?

  end

  def log_in user
    session[:user_id] = user.id
  end

  def log_out
    forget current_user
    session.delete :user_id
    @current_user = nil
  end


end
