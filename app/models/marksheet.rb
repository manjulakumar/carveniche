class Marksheet < ActiveRecord::Base
   attr_accessible :student_name, :grade, :marks
   validates_numericality_of :marks
end
