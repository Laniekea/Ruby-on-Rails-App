class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.integer :employees, index: true, foreign_key: true
      t.float :salary
      t.float :annual_salary
      t.float :tax_brackets, index: true, foreign_key: true
      t.float :monthly_nett_income

      t.timestamps
    end



  end
end
