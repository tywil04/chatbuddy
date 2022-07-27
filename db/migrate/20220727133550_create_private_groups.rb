class CreatePrivateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :chatbuddy_private_groups do |t|
      t.string :users_string

      t.timestamps
    end
  end
end
