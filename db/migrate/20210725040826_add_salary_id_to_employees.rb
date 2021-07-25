class AddSalaryIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :salary_id, :integer
    add_index :employees, :salary_id
  end
end
