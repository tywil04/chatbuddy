class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :chatbuddy_groups do |t|

      t.timestamps
    end
  end
end
