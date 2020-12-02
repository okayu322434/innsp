class ChangesController < ApplicationController

  def index
    @change = Change.all
  end



end
