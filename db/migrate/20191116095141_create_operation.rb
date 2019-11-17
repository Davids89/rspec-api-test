class CreateOperation < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.references :operation_type, foreign_key: true
    end
  end
end
