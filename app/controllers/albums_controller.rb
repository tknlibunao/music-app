class AlbumsController < ApplicationController
  before_action :set_album, only: [:edit, :update, :destroy]
  
  def index
    @albums = Album.all
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new(album_params)
    
    if @album.save
      redirect_to albums_path, notice: 'New album successfully created'
    else
      render :new, error: 'Failed to create album'
    end
  end
  
  def edit
  end
  
  def update
    if @album.update(album_params)
      redirect_to albums_path, notice: 'Album details successfully updated'
    else
      render :edit, error: 'Failed to update album details'
    end
  end
  
  def destroy
    @album.destroy
    redirect_to albums_path, notice: 'Album data was deleted'
  end
  
  private
  
  def set_album
    @album = Album.find(params[:id])
  end
  
  def album_params
    params.require(:album).permit(:name, :kind, :duration_hours, :duration_minutes, :duration_seconds, :released, :released_at)
  end
end
