class Helpers

  def self.current_user(session)
    @user = User.create(username: params[:username], password: params[:password], balance: params[:balance])
    session[:id] = @user
  end

  def self.is_logged_in?

  end

end
