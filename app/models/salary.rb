class Salary < ApplicationRecord
  belongs_to :employees
  belongs_to :tax_brackets

end
