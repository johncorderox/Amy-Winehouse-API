class Api::V1::GroupsController < ApplicationController
	before_action :set_group, only: [:show, :update, :destroy]

	def index
		@groups = Group.all
		render json: @groups
	end

	def show
		render json: @groups
	end

	def create
		@group = Group.new(group_params)
		if @group.save
			render json: @group, status: :created, location: api_v1_article_url(@group)
		else
			render json: @group.errors, status: :unprocessable_entity
		end
	end

	def update
		if @group.update(group_params)
			render json: @group
		else
			render json: @group.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@group.destroy
	end

	private

	def set_article
		@group = Group.find(params[:id])
	end

	def group_params
		params.require(:group).permit(:name)
	end
end
