class Helpers

  def current_user
    @user = User.create(username: params[:username], password: params[:password], balance: params[:balance])
    session[:id] = @user.id
  end

  def is_logged_in?

  end

end
