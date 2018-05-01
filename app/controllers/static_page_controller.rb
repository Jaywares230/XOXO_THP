class StaticPageController < ApplicationController
	def home 
	end 
	def new 
	end 
	def index
		@gossips = Gossip.all
	end 

	def show

		gossip.find(params[:id])
	end 

end
