class RefactorCustomerTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :customer, :json
    add_column :customers, :name, :string
    add_column :customers, :age, :integer
    add_column :customers, :items, :json
  end
end
