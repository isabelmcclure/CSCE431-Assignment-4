class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      
      t.column "title", :string
      t.string "author"
      t.string "genre"
      t.decimal "price"
      t.string "published-date"

      t.timestamps
    end
  end
  def down
    drop_table :books
  end
end
