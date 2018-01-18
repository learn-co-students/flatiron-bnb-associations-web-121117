class ListingController < ApplicationController

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find_by(id: params[:id])
    @host = @listing.host
    @reservations = @listing.reservations
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def delete

  end
end
