class GraduateProgram < ActiveRecord::Base

  has_many :students, as: :program

end
