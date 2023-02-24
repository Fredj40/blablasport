class SportsController < ApplicationController

private

  def sport_params
    params.require(:sport).permit(:sport_name, :photo)
  end

end
