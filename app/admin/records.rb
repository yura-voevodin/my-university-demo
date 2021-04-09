ActiveAdmin.register Record do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :start_date,
                :classroom_id,
                :discipline_id,
                :teacher_id,
                :pair_id,
                group_ids: []

  # Filterable attributes on the index screen
  filter :start_date
  filter :classroom
  filter :group
  filter :teacher
  filter :discipline

  # -- Index --
  index do
    selectable_column
    
    column :start_date
    column :pair
    column :discipline
    column :teacher
    column :classroom
    
    actions defaults: true do |record|
      link_to I18n.t("active_admin.duplicate"), clone_admin_record_path(record)
    end
  end

  # -- Form --
  form do |f|
    f.inputs do

      # Start date
      f.input :start_date, as: :datepicker,
      datepicker_options: {
        min_date: 3.days.ago.to_date
      }

      # Time
      f.input :pair, as: :select

      # Discipline
      f.input :discipline, as: :select

      # Classroom
      f.input :classroom, as: :select

      # Teacher
      f.input :teacher, as: :select
      
      # Groups
      f.input :groups, as: :select

    end
    f.actions
  end
  
  # Show Page
  show do
    attributes_table do
      row :start_date
      row :pair
      row :classroom
      row :discipline
      row :teacher
      row :groups
      row :created_at
      row :updated_at
    end
  end
  
  member_action :clone, method: :get do
    @record = resource.dup
    @page_title = "#{resource.start_date} - #{resource.discipline.name}" # Sets the page title
    render :new, layout: false
  end
  
end
