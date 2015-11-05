ActiveAdmin.register_page "Dashboard" do

  index do
    column :title, sortable: :title do |post|
      link_to post.title, admin_post_path(post)
    end
  end

end

