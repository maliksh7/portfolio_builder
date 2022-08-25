ActiveAdmin.register Testimonial do
  controller do
    def scoped_collection
      Testimonial.where(id: current_admin_user.testimonial.ids)
    end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :role, :quote, :admin_user_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:person1_name, :p1_role, :p1_quote, :person2_name, :p2_role, :p2_quote, :person3_name, :p3_role, :p3_quote, :person4_name, :p4_role, :p4_quote, :person5_name, :p5_role, :p5_quote, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :admin_user_id, label: 'Admin ID', input_html: { value: current_admin_user.id, :disabled => true }  
      f.input :name
      f.input :role
      f.input :quote
      f.input :image, as: :file
    end
    f.actions
  end

  show do
      attributes_table do
        row :image do          
            div do
              image_tag url_for(testimonial.image), size: "200x200"
            end
          end
        end
      # row :name
      # row :role
      # row :quote
      # row :admin_user_id
      end
  end
