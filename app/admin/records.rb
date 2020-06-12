ActiveAdmin.register Record do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :start_date, :classroom_id, :discipline_id, :teacher_id, :pair_id

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

    actions
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

    end
    f.actions
  end
  
end
