require_relative '../models/employee'
require_relative 'base_repository'

class EmployeesRepository < BaseRepository

  def find_username(username)
    @elements.find { |employee| employee.username == username }
  end

  private

  def build_element(row)
    row[:id] = row[:id].to_i
    Employee.new(row)
  end
end
