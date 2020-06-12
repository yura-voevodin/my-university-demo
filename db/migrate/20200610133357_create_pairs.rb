class CreatePairs < ActiveRecord::Migration[6.0]
  def change
    create_table :pairs do |t|
      t.time :start_time, null: false
      t.string :name
      t.timestamps
    end
  end
end
