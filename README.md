assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

Dustin Lee

Students has a polymorphic relationship with program type.  The types of programs include Undergraduate and Graduate.

The Student model has columns to store the program_id and program_type.

Each program is given the association has_many :students, :as :program, :dependent => :destroy.  This allows all associated students to be destroyed when the parent program is destroyed.