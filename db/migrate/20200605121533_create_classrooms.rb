class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :lowercase_name
      t.timestamps
    end
  end
end
