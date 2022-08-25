ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  controller do
    def scoped_collection
      AdminUser.where(id: current_admin_user.id)
    end
  end
  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
