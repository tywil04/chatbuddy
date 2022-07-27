class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chatbuddy_messages do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :chatbuddy_group, null: false, foreign_key: true
      t.text :content
      t.string :state

      t.timestamps
    end
  end
end
