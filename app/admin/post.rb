ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  index do
    column :title
    column "Author", :admin_user
    column :category
    column :created_at
    actions

  end

  controller do
    def permitted_params
      params.permit post: [:title, :body, :category_id, :author_id]
    end
  end

end
