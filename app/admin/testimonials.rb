ActiveAdmin.register Testimonial do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :person1_name, :p1_role, :p1_quote, :person2_name, :p2_role, :p2_quote, :person3_name, :p3_role, :p3_quote, :person4_name, :p4_role, :p4_quote, :person5_name, :p5_role, :p5_quote, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:person1_name, :p1_role, :p1_quote, :person2_name, :p2_role, :p2_quote, :person3_name, :p3_role, :p3_quote, :person4_name, :p4_role, :p4_quote, :person5_name, :p5_role, :p5_quote, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
