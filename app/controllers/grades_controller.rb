class GradesController < ApplicationController
  def index
  	@grades = Marksheet.group(:grade).select(:grade).pluck(:grade)  
  end
end
