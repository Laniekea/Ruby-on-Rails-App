class AddTaxBracketIdToSalaries < ActiveRecord::Migration[6.1]
  def change
    add_column :salaries, :tax_bracket_id, :integer
    add_index :salaries, :tax_bracket_id
    create_join_table :salaries, :tax_brackets
  end

end
