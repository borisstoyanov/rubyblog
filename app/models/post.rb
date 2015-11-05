class Post < ActiveRecord::Base
  def post_params
    params.require(:post).permit(:title, :body, :category_id, :author_id)
  end

  belongs_to :category
end
