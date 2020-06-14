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

  action_item :view, only: :show, priority: 0 do
    link_to t("active_admin.visit_on_site"), classroom_url(classroom.friendly_id)
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
