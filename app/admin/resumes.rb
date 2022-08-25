ActiveAdmin.register Resume do
  controller do
    def scoped_collection
      Resume.where(id: current_admin_user.resume.ids)
    end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :degree_title, :badge, :institute, :details, :role_title, :duration, :company, :description, :admin_user_id 
  #
  # or
  #
  # permit_params do
  #   permitted = [:bio, :address, :degree1_title, :d1_start_date, :d1_end_date, :d1_institute, :d1_details, :degree2_title, :d2_start_date, :d2_end_date, :d2_institute, :d2_details, :role1_title, :r1_start_date, :r1_end_date, :r1_company, :r1_d1, :r1_d2, :r1_d3, :r1_d4, :role2_title, :r2_start_date, :r2_end_date, :r2_company, :r2_d1, :r2_d2, :r2_d3, :r2_d4, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :admin_user_id, label: 'Admin ID', input_html: { value: current_admin_user.id, :disabled => true }  
      f.input :degree_title
      f.input :institute
      f.input :details
      f.input :role_title
      f.input :duration
      f.input :company
      f.input :description
    end
    f.actions
  end

end
