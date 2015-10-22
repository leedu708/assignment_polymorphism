class StudentsController < ApplicationController

  def index

    @program = get_program
    @students = @program.students

  end

  private

  def get_program

    program, id = request.path.split('/')[1,2]
    program = program.split('_')
    program = program.map { |p| p.capitalize }
    program = program.map { |p| p.singularize }.join("").constantize
    program.find(id)

  end

end
