class RegressionsController < ApplicationController

  def index
    @regressions = Regression.all

    if params[:state]
      regression(@regressions)
    end
  end

end
