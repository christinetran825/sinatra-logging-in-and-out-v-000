class Helpers

  def current_user
    @user = User.find_by(username: params[:username])
    @user.save
    session[:id] = @user.id
  end

  def is_logged_in?

  end

end
