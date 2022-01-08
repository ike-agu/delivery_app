require_relative '../views/sessions_view'

class SessionController
  def initialize(employee_repository)
    @view = SessionsView.new
    @employee_repository = employee_repository
  end

  def sign_in
    # ask user for user_name
    username = @view.ask_user_for(:username)
    # ask uder for password
    password = @view.ask_user_for(:password)
    # find the employee with the username
     employee = @employee_repository.find_username(username)
    if employee && employee.password == password
    #   # then employee logged in
       @view.signed_in_successfully(employee)
       return employee
    else
       @view.wrong_credentials
       sign_in # Recursive call
    #   # compare the password given with the one in the DB
    end
  end
end
