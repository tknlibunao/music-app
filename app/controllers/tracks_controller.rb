class TracksController < ApplicationController
  before_action :set_track, only: [:edit, :update, :destroy]
  
  def index
    @tracks = Track.all
  end
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(track_params)
    
    if @track.save
      redirect_to tracks_path, notice: 'New track successfully added'
    else
      render :new, error: 'Failed to add track'
    end
  end
  
  def edit
  end
  
  def update
    if @track.update(track_params)
      redirect_to tracks_path, notice: 'Track details successfully updated'
    else
      render :edit, error: 'Failed to update track details'
    end
  end
  
  def destroy
    @track.destroy
    redirect_to tracks_path, notice: 'Track data was deleted'
  end
  
  private
  
  def set_track
    @track = Track.find(params[:id])
  end
  
  def track_params
    params.require(:track).permit(:name, :duration_minutes, :duration_seconds)
  end
end
