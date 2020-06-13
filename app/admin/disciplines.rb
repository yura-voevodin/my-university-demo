ActiveAdmin.register Discipline do

  permit_params :name, :description

  # Filterable attributes on the index screen
  filter :name

  # -- Index --
  index do
    selectable_column
    column :name
    column :created_at
    column :updated_at

    actions
  end
end
