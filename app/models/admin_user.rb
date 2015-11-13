class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
private
  def user_params
    allow = [:email, :name, :password, :password_confirmation, :remember_me]
    params.require(:player).permit(allow)
  end
  has_many :posts
end
