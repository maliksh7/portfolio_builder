ActiveAdmin.register Portfolio do
  controller do
    def scoped_collection
      Portfolio.where(id: current_admin_user.portfolio.id)
    end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :info, :admin_user_id, :images => []

  form  do |f|
    f.inputs "Portfolio" do
      f.input :admin_user_id, label: 'Admin ID', input_html: { value: current_admin_user.id, :disabled => true }
      f.input :info
      f.input :images, as: :file, input_html: { multiple: true }
    end

    f.actions
  end

  show do
    attributes_table do
      row :images do
        div do
          portfolio.images.each do |img|
            div do
              image_tag url_for(img), size: "200x200"
            end
          end
        end
      end
      row :info
      row :admin_user_id
    end
  end

end
