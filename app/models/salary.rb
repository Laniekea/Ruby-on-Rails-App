class Salary < ApplicationRecord
  has_one :employees
  has_one :tax_brackets

end
