class MoviesController < ApplicationController

	def new
	end

	def create
		@movie = Movie.new(params.require(:movie).permit(:title, :premiere_date,
				:length, :genres, :director, :screenwriter, :country, :text))
		@movie.save
		redirect_to @movie
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def index
		@movies = Movie.all
	end

	#private
	
	#def movie_params 
	 # 	params.require(:movie).permit(:title, :text, :tags, :author)
  	#end

end
