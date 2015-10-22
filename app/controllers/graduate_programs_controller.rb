class GraduateProgramsController < ApplicationController

  def index

    @programs = GraduateProgram.all

  end
  
end
