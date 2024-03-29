class WeaponsController < ApplicationController
  def toggle_condition
    @weapon = Weapon.find(params[:id])
    @weapon.toggle_condition

    respond_to do |format|
      format.html { redirect_to @weapon, notice: 'Changed condition' }
      format.js
    end
  end
end
