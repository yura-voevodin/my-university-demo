class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :lowercase_nam
      t.timestamps
    end
  end
end
