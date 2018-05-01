class GossipsController < ApplicationController
		def new 
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
	end 
end
