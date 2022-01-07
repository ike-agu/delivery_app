class SessionsView
  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    print '>'
    gets.chomp
  end

  def wrong_credentials
    puts 'Wrong credentials...Try again!'
  end

  def signed_in_successfully
    puts 'You are Signed in!'
  end
end
