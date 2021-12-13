class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :new_date
      t.integer :page
      t.string :image

      t.timestamps
    end
  end
end