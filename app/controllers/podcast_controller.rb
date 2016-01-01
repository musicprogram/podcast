class PodcastController < ApplicationController
  def index
  	@fondo_pod = true
  end
  def show
  	@fondo_pod_show = true
  end
end
