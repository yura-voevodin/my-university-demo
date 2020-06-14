ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }
  
  content title: proc { I18n.t("active_admin.dashboard") } do

    panel "Недавні записи" do
      table_for Record.order('start_date desc').limit(10) do
        column :start_date
        column :pair
        column :discipline
        column :classroom
        column :teacher
      end
    end
    
  end # content
end
