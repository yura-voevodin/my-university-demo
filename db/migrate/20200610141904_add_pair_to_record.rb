class AddPairToRecord < ActiveRecord::Migration[6.0]
  def change
    add_reference :records, :pair, foreign_key: true, null: true
  end
end
