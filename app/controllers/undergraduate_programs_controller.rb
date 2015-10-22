class UndergraduateProgramsController < ApplicationController

  def index

    @programs = UndergraduateProgram.all

  end

end
