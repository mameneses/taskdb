class TasksController < ApplicationController

	def index
		@tasks = Task.where(user_id: params[:user_id])
		respond_to do |format|
			format.json { render json: @tasks}
		end
	end

	def show
		@task = Task.find(params[:task_id])
		respond_to do |format|
			format.json { render json: @task}
		end
	end

	def create
		@task = Task.create(content: params[:content], user_id: params[:user_id])
		respond_to do |format|
			format.json { render json: @task}
		end	
	end
	def update
		task = Task.find(params[:id])
		task.update_attributes(content: params[:content], user_id: params[:user_id])
		respond_to do |format|
			format.json { render json: task}
		end
	end
	def destroy
		task = Task.find(params[:id])
		task.destroy
		respond_to do |format|
			format.json { render json: "successfully deleted"}
		end
	end
end
