class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
  end

  def run
   employee = @sessions_controller.sign_in
    loop do
      if employee.manager?
        print_manager_menu
        choice = ask_user_for_choice
        route_manager_action(choice)
      else
        print_delivery_guy_menu
        choice = ask_user_for_choice
        route_delivery_guy_action(choice)
      end
    end
  end

  private

  def print_manager_menu
    # puts '--------------------'
    # puts '------- MENU -------'
    # puts '--------------------'
    puts '1. Add new meal'
    puts '2. List all meals'
    puts '3. Add new customer'
    puts '4. List all customers'
    puts '8. Exit'
  end

  def route_manager_action(choice)
    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 8 then stop!
    else puts 'Try again by selecting either 1, 2, 3 or 4'
    end
  end

  def print_delivery_guy_menu
    puts '1. List orders'
    puts '2. Mark order as delivered'
  end

  def route_delivery_guy_action(choice)
    case choice
    when 1 then puts 'TODO: list delivery guy orders'
    when 2 then puts 'TODO: Mark order as deliver'
    when 8 then stop!
    else puts 'Try again by selecting either 1 or 2'
    end
  end

  def ask_user_for_choice
    puts 'What do you want to do next'
    print '>'
    return gets.chomp.to_i
  end
end
