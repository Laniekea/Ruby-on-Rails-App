class Salary < ApplicationRecord
  belongs_to :employees
  has_one :tax_brackets

  
end
