ActiveAdmin.register Service do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :service_info, :s1_title, :s1_desc, :s2_title, :s2_desc, :s3_title, :s3_desc, :s4_title, :s4_desc, :s5_title, :s5_desc, :s6_title, :s6_desc, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:service_info, :s1_title, :s1_desc, :s2_title, :s2_desc, :s3_title, :s3_desc, :s4_title, :s4_desc, :s5_title, :s5_desc, :s6_title, :s6_desc, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
