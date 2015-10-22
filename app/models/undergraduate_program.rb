class UndergraduateProgram < ActiveRecord::Base

  has_many :students, as: :program

end
