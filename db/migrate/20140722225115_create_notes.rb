class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.references :book, index: true

      t.timestamps
    end
  end
end
