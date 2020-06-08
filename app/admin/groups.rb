ActiveAdmin.register Group do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  
  permit_params :name, :lowercase_name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
  
end
