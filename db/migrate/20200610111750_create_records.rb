class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|

      t.datetime :start_date

      t.belongs_to :classroom, index: true, null: true
      t.belongs_to :discipline, index: true, null: true
      t.belongs_to :teacher, index: true, null: true

      t.timestamps
    end
  end
end
