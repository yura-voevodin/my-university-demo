ActiveAdmin.register Record do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :start_date, :classroom_id, :discipline_id, :teacher_id
  
end
