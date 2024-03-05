class SocialsController < ApplicationController
  before_action :authenticate_user!
  def index
    @socials = Social.all
  end
  
  def show
    @social = Social.find(params[:id])
  end

  def new
    @social = Social.new
  end

  def create
    @social = Social.new(social_params)
    password = params[:social][:password]
    if @social.save
      redirect_to @social, notice: 'Social was successfully created.'
    else
      render :new
    end
  end

  def edit
    @social = Social.find(params[:id])
  end

  def update
    @social = Social.find(params[:id])
    if @social.update(social_params)
      redirect_to @social
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @social = Social.find(params[:id])
    @social.destroy
    redirect_to root_path, status: :see_other
  end

  private
  def social_params
    params.require(:social).permit(:username, :password, :media_type,:user_id)
  end
end
