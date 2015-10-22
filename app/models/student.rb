class Student < ActiveRecord::Base

  belongs_to :program, :polymorphic => true
  
end
