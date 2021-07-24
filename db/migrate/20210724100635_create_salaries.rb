class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.int :employees
      t.float :salary
      t.float :annual_salary
      t.float: tax_brackets
      t.float :monthly_nett_income

      t.timestamps
    end
  end
end
