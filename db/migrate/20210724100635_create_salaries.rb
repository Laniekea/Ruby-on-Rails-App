class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.references :employees, foreign_key: true
      t.float :salary
      t.float :annual_salary
      t.references :tax_brackets, foreign_key: true
      t.float :monthly_nett_income

      t.timestamps
    end

  

  end
end
