class Helpers

  def current_user
    @user = User.create(username: , password: , balance: )
    session[:id] = @user.id
  end

  def is_logged_in?

  end

end
