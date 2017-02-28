class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word
      t.text :definition
      t.string :rae_key
      t.boolean :active
      t.integer :genre
      t.string :root_word
      t.string :word_type

      t.timestamps
    end
  end
end
