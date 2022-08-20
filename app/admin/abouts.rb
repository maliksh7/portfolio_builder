ActiveAdmin.register About do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :about_me, :birthday, :age, :website, :degree, :phone, :email, :city, :freelance, :add_more, :fact_info, :clients, :projects, :hours_of_support, :awards, :skill_description, :HTML, :CSS, :JAVASCRIPT, :PHP, :WORDPRESS, :PHOTOSHOP, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:about_me, :birthday, :age, :website, :degree, :phone, :email, :city, :freelance, :add_more, 
  #   :fact_info, :clients, :projects, :hours_of_support, :awards, :skill_description, :HTML, :CSS, :JAVASCRIPT, :PHP, :WORDPRESS, :PHOTOSHOP, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # form  do |f|
  #   f.inputs "About" do
  #     f.input :about_me
  #     f.input :birthday
  #     f.input :age
  #     f.input :website
  #     f.input :degree
  #     f.input :phone
  #     f.input :email
  #     f.input :city
  #     f.input :freelance
  #     f.input :add_more
  #     f.input :fact_info
  #     f.input :clients
  #     f.input :projects
  #     f.input :hours_of_support
  #     f.input :awards
  #     f.input :skill_description
  #     f.input :HTML
  #     f.input :CSS
  #     f.input :JAVASCRIPT
  #     f.input :PHP
  #     f.input :WORDPRESS
  #     f.input :PHOTOSHOP
  #     f.input :admin_user_id
  #       f.input :image, as: :file
  #   end

  #   f.actions
  # end

  # show do
  #   attributes_table do
  #     row :title
  #     row :image do |ad|
  #       image_tag url_for(ad.image)
  #     end
  #   end
  # end
end


