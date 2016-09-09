class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def destroy
    @profile.destroy
    redirect_to root_path
  end

  private

    def profile_params
      params.require(:profile).permit(:title, :body)
    end

    def find_profile
      @profile = Profile.find(params[:id])
    end
end
