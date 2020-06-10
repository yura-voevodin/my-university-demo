class GroupsRecords < ActiveRecord::Migration[6.0]
  def change

    create_table :groups_records, id: false do |t|
      t.belongs_to :group, index: true
      t.belongs_to :record, index: true
    end
    
  end
end
