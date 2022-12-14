ActiveAdmin.register Profile do
  controller do
    def scoped_collection
      Profile.where(id: current_admin_user.profile.id)
    end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :designation, :twitter, :facebook, :instagram, :skype, :linkedin, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :designation, :twitter, :facebook, :instagram, :skype, :linkedin, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

  form do |f|
    f.inputs do
      f.input :admin_user_id, label: 'Admin ID', input_html: { value: current_admin_user.id, :disabled => true }
      f.input :first_name
      f.input :last_name
      f.input :designation
      f.input :twitter
      f.input :facebook
      f.input :instagram
      f.input :skype
      f.input :linkedin
      # f.input :avatar, as: :file
    end
    f.actions
  end

end
