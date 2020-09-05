class TasksController < ApplicationController
   before_action :set_task, only: [:show, :edit, :update, :destroy]
    # READ ALL
    def index
        @tasks = Task.all
    end
    # CREATE
    # GET
    def new
        @task = Task.new #params[:task]
    end
    # POST
    def create
        @task = Task.new(task_params) # create with permitted params
        @task.save

        redirect_to task_path(@task)
    end
    # READ ONE
    def show
    end

    #UPDATE
    def edit
    end

    def update
        @task.update(task_params)
    end

    # DELETE ONE

    def destroy
     @task = @task.destroy

    redirect_to task_path(@task)
    end

    private

    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end

    def set_task
        @task = Task.find(params[:id])
    end

end
