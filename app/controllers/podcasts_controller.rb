class PodcastsController < ApplicationController
  def index
  	@podcasts = Podcast.all.order("created_at DESC")
  	@fondo_pod = true
  end
  def show
  	@podcast = Podcast.find(params[:id])
  	@fondo_pod_show = true
  end
end
