class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.datetime :timestamp
      t.references :employees, index: true, foreign_key: true
      t.float :annual_salary
      t.float :monthly_income_tax

      t.timestamps
    end
  end
end
