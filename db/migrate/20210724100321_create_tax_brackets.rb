class CreateTaxBrackets < ActiveRecord::Migration[6.1]
  def change
    create_table :tax_brackets do |t|
      t.integer :level
      t.float :rate

      t.timestamps
    end
  end
end
