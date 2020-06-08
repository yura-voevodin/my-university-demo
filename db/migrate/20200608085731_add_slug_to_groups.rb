class AddSlugToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :slug, :string
    add_index :groups, :slug
    add_column :groups, :slug_en, :string
    add_column :groups, :slug_uk, :string
    add_index :groups, :slug_en
    add_index :groups, :slug_uk
  end
end
