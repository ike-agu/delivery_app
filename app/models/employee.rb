class Employee
  attr_reader :username, :password

  def initialize(attributes = {})
    # id,username,password,role
    @id = attributes[:id]
    @username = attributes[:username]
    @password = attributes[:password]
    @role = attributes[:role] #manager || delivery guy
  end

  def manager?
    @role = 'manger'
  end

  def to_csv_row
    [@id, @username, @password, @role]
  end

  def self.headers
    csv << %w[id username password role]
  end
end
