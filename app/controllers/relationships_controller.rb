class RelationshipsController < ApplicationController

	def index
		render_relationships
	end

	def create
		create_relationships
		render_relationships
	end

	def destroy
		Relationship.find_by(job_id: Job.find(params[:jobID]), contact:Contact.find(params[:id])).destroy
		render_relationships
	end

	private

		def create_relationships
			Relationship.create(job: Job.find(params[:jobID]), contact:Contact.find(params[:id]), user:User.find(current_user.id))
		end

		def render_relationships
			render json: Contact.find(params[:id]).contact_companies
		end

end	