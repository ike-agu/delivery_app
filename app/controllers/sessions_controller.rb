require_relative '../views/sessions_view'

class SessionController

  def initialize
    @view = SessionsView.new
  end
  def sign_in
    # ask uder for user_name
    username = @view.ask_user_for(:username)
    # ask uder for password
    password = @view.ask_user_for(:password)
    # find the employee with the username
     # compare the password given with the one in the DB
  end
end
