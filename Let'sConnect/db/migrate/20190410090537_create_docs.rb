class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :title
      t.text :Content

      t.timestamps
    end
  end
end
