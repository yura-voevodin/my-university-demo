ActiveAdmin.register Pair do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :start_time, :name

  # Filterable attributes on the index screen
  filter :name

  # -- Index --
  index do
    selectable_column
    column :start_time do |r|
      r.start_time.strftime('%H:%M')
    end
    column :name
    actions
  end
  
end
