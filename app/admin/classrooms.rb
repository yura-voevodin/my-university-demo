ActiveAdmin.register Classroom do

  permit_params :name, :lowercase_name

  # Filterable attributes on the index screen
  filter :name

  # -- Index --
  index do
    selectable_column
    column :name

    # Columns for admin
    if current_admin_user.is_admin?
      column :slug_uk
      column :created_at
      column :updated_at
    end

    actions
  end

  # -- Form -- 
  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

  # -- Show -- 
  show do
    attributes_table do
      row :name

      # Rows for admin
      if current_admin_user.is_admin?
        row :lowercase_name
        row :slug_uk
      end

      row :created_at
      row :updated_at
    end
  end
  
end
