class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :description
      t.attachment :document

      t.timestamps
    end
  end
end
