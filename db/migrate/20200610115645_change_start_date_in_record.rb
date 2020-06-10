class ChangeStartDateInRecord < ActiveRecord::Migration[6.0]
  def change

    change_column :records, :start_date, :date

  end
end
