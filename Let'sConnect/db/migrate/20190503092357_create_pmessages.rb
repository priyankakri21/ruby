class CreatePmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :pmessages do |t|
    t.text :body
    t.references :conversation, index: true
    t.references :user, index: true

      t.timestamps
    end
  end
end
