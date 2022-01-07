require_dependency "case1/application_controller"

module Case1
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    # GET /tasks
    def index
      @tasks = Task.all
    end

    # GET /tasks/1
    def show
    end

    # GET /tasks/new
    def new
      @task = Task.new
    end

    # GET /tasks/1/edit
    def edit
    end

    # POST /tasks
    def create
      @task = Task.new(task_params)

      if @task.save
        redirect_to action: :index, notice: 'Task was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /tasks/1
    def update
      if @task.update(task_params)
        redirect_to action: :index, notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /tasks/1
    def destroy
      authorize @task
      @task.destroy
      redirect_to tasks_url, notice: 'Task was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Task.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def task_params
        params.fetch(:task, {}).permit(:category_id, :title, :content)
      end
  end
end
