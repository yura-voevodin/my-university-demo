class AddSlugToClasroom < ActiveRecord::Migration[6.0]
  def change
    add_column :classrooms, :slug, :string
    add_index :classrooms, :slug
  end
end
