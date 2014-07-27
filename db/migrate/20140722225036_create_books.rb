class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.references :reviewer, index: true

      t.timestamps
    end
  end
end
