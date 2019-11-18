class CreateEditorial < ActiveRecord::Migration[6.0]
  def up
    create_table :editorials do |t|
      t.string :name

      t.timestamps
    end

    remove_column :books, :editorial
    add_reference :books, :editorial, foreign_key: true
  end

  def down
    add_column :books, :editorial, :string
  end
end
