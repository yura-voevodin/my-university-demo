class AddSlugUkToClassrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :classrooms, :slug_en, :string
    add_column :classrooms, :slug_uk, :string
    add_index :classrooms, :slug_en
    add_index :classrooms, :slug_uk
  end
end
