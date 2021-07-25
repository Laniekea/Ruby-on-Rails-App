class AddEmployeeIdToLogs < ActiveRecord::Migration[6.1]
  def change
    add_column :logs, :employee_id, :integer
    add_index :logs, :employee_id
  end
end
