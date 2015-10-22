class UndergraduateProgram < ActiveRecord::Base

  has_many :students, as: :program, :dependent => :destroy

end
