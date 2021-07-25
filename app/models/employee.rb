class Employee < ApplicationRecord
  has_one :salaries
  has_many :logs
end
