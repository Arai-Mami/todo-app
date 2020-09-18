class UsersController < ApplicationController
  def edit
  end

  def update
    user=User.find(params[:id])
    user.update(user_parameter)
    redirect_to controller: :tasks, action: :index
  end

    private
    def user_parameter
      params.require(:user).permit(:name, :email)
    end
end
