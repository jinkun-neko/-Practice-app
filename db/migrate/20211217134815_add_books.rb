class AddBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :now_pages, :integer
    add_index :books, :title, unique: true
  end
end
