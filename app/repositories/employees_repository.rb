require_relative '../models/employee'
require_relative 'base_repository'

class EmployeesRepository < BaseRepository
  private

  def build_element(row)
    row[:id] = row[:id].to_i
    Employee.new(row)
  end
end
