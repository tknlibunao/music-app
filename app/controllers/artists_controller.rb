class ArtistsController < ApplicationController
  before_action :set_artist, only: [:edit, :update, :destroy, :purge_avatar]
  
  def index
    @artists = Artist.all
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
    
    if @artist.save
      redirect_to artists_path, notice: 'New artist successfully created'
    else
      render :new, error: 'Failed to create artist'
    end
  end
  
  def edit
  end
  
  def update
    if @artist.update(artist_params)
      redirect_to artists_path, notice: 'Artist details successfully updated'
    else
      render :edit, error: 'Failed to update artist details'
    end
  end
  
  def destroy
    @artist.destroy
    redirect_to artists_path, notice: 'Artist data was deleted'
  end
  
  def purge_avatar
    @artist.avatar.purge
  end
  
  private
  
  def set_artist
    @artist = Artist.find(params[:id])
  end
  
  def artist_params
    params.require(:artist).permit(:name, :bio, :avatar)
  end
end
