class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :sele_date
      t.integer :pages
      t.string :imgae

      t.timestamps
    end
  end
end
