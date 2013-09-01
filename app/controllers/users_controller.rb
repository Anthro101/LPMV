class UsersController < ApplicationController
#   class UserParams
#   def self.build params
#     filtered_params = params.
#       require(:user).
#       permit(:name)
#   end
# end

def create
  User.create(UserParams.build(params))
end

def update
  User.find(params[:id]).update_attributes(UserParams.build(params))
  redirect_to root_path
end

end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

