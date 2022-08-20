ActiveAdmin.register Resume do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :bio, :address, :degree1_title, :d1_start_year, :d1_end_year, :d1_institute, :d1_details, :degree2_title, :d2_start_year, :d2_end_year, :d2_institute, :d2_details, :role1_title, :r1_start_year, :r1_end_year, :r1_company, :r1_d1, :r1_d2, :r1_d3, :r1_d4, :role2_title, :r2_start_year, :r2_end_year, :r2_company, :r2_d1, :r2_d2, :r2_d3, :r2_d4, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:bio, :address, :degree1_title, :d1_start_date, :d1_end_date, :d1_institute, :d1_details, :degree2_title, :d2_start_date, :d2_end_date, :d2_institute, :d2_details, :role1_title, :r1_start_date, :r1_end_date, :r1_company, :r1_d1, :r1_d2, :r1_d3, :r1_d4, :role2_title, :r2_start_date, :r2_end_date, :r2_company, :r2_d1, :r2_d2, :r2_d3, :r2_d4, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
