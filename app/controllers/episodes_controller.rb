class EpisodesController < ApplicationController
  before_action :set_episode, only: %i[edit show update]

  def index
    @episodes = Episode.all
  end

  def show; end

  def edit; end

  def new
    @episode = Episode.new
  end

  def create
    Episode.create!(episode_params)
    redirect_to root_path
  end

  def update
    if Episode.update(episode_params)
      redirect_to @episode
    else
      redirect_to edit_episode_path(@episode)
    end
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:asset)
  end
end
