class GuestsController < ApplicationController
  def create
    @party = Party.find(params[:party_id])
    @guest = @party.guests.create(guest_params)
    redirect_to party_path(@party)
  end

  def destroy
    @party = Party.find(params[:party_id])
    @guest = @party.guests.find(params[:id])
    @guest.destroy
     redirect_to party_path(@party)
  end

  private
    def guest_params
      params.require(:guest).permit(:name, :email, :phone_no)
    end
end