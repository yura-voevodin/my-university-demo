ActiveAdmin.register Discipline do

  permit_params :name, :description

  # Filterable attributes on the index screen
  filter :name

  # -- Index --
  index do
    selectable_column
    column :name

    # Columns for admin
    if current_admin_user.is_admin?
      column :created_at
      column :updated_at
    end

    actions
  end
end
