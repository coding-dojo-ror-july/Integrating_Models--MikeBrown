class UsersController < ApplicationController
  def index
    render json: User.all
  end
  def new
    render 'new'
  end
  def create
    User.create(
      name: params[:name]
    )
    redirect_to '/users'
  end
  def edit
    @user = User.find(params[:id])
  end
  def show
    render json: User.find(params[:id])
  end
  def total
    render json: { total: User.count }
  end
end
