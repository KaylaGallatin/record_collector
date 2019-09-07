class AlbumsController < ApplicationController
  before_action :set_album, only: %i(show edit update destroy)

  def index
    @albums = Album.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new
    @album.assign_attributes(album_params)
    if @album.valid? && @album.save
      redirect_to album_path(@album),
        notice: 'Record successfully created'
    else
      render :new, alert: 'Record could not be saved'
    end
  end

  def edit
  end

  def update
    @album.assign_attributes(album_params)
    if @album.valid? && @album.save
      redirect_to album_path(@album),
        notice: 'Record updated successfully'
    else
      render :new, alert: 'Record could not be updated'
    end
  end

  def destroy
    @album.destroy
    redirect_to albums_path, notice: 'Record was successfully deleted.'
  end

  private

    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album)
            .permit(:title, :release_date, :description)
            .merge(user_id: current_user.id)
    end

end