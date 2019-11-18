class AddTypeToOperationType < ActiveRecord::Migration[6.0]
  def change
    add_column :operation_types, :type, :string
  end
end
