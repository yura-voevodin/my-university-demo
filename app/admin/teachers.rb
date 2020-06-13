ActiveAdmin.register Teacher do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  
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
    end

    column :created_at
    column :updated_at

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
