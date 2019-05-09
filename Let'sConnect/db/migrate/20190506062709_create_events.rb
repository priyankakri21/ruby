class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :email
      t.integer :contact ,:limit => 8
      t.string :course

      t.timestamps
    end
  end
end
