class GossipsController < ApplicationController
	
	def new 
		@gossip = Gossip.new 
	end 
	
	def create
	gossip_params = params.require(:gossip).permit(:anonymous_author, :content)

	gossip = Gossip.create(gossip_params) 
	redirect_to gossips_path

	end 
	def index
		@gossips = Gossip.all
	end 

	def show

		@gossip = Gossip.find(params[:id])
	end 

	def edit 
		@gossip = Gossip.find(params[:id])

	end 

	def update 
		@gossip = Gossip.find(params[:id])
		gossip_params = params.require(:gossip).permit(:content)
		@gossip.update(gossip_params)
		redirect_to gossips_path	
	end 



end
