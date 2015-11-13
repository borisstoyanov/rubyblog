ActiveAdmin.register AdminUser do
  index do
    column :email
    column :name
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit admin_user: [:email, :name, :password, :password_confirmation, :remember_me]
    end
  end
end

