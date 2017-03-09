class NotesController < ApplicationController
	
	def index
		@notes = Note.all
	end

	def new_note
		Note.create(title: params[:title])
		@note = Note.last
		data = {:data => @note}
		render json: data
	end

	def edit
		Note.update(params[:id], description: params[:description])
		@note = Note.find(params[:id])
		render json: data
	end

end
