class MarksheetsController < ApplicationController
	def edit
		@grade = params[:grade_id]
		@marksheets = Marksheet.where(:grade=>@grade)
	end
	def update
		marksheets_hash = params[:marksheet]
		marksheets = marksheets_hash.keys.collect { |key| Marksheet.find(key.to_i) }
		Marksheet.transaction do 
			marksheets.each do |ms|
				ms.update_attributes(marksheets_hash[ms.id.to_s])
			end
		end
		puts marksheets.inspect
		unless marksheets.collect(&:errors).compact.empty?
			@grade = params[:grade_id]
			@marksheets=marksheets
			render :action=>:edit
		else
			redirect_to grade_marksheet_path(params[:grade_id]), :notice=>"Marksheet updated successfully"
		end
	end
	def show
		@grade = params[:grade_id]
		@marksheets = Marksheet.where(:grade=>@grade)
	end
end
