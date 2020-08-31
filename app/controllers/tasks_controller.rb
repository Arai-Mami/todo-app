class TasksController < ApplicationController
  def index
    @tasks=Task.where(task_type_id: params[:task_type_id])
    @task_type = TaskType.new
    @select_type= TaskType.find(params[:task_type_id]) if params[:task_type_id]
    @task_types= TaskType.all
  end

  def new
    @task_type = TaskType.new
    @select_type= TaskType.find(params[:task_type_id])
    @task_types= TaskType.all
  end

  def create
    Task.create(task_params)
    redirect_to action: :index
  end

  def show
    @task_type = TaskType.new
    @task=Task.find(params[:id])
  end

  def edit
    @task=Task.find(params[:id])
  end

  def update
    @task= Task.find(params[:id])
    @task.update(update_params)
  end

    private
    def task_params
     params.permit(:title, :detail, :task_type_id)
    end

    def update_params
      params.require(:task).permit(:title,:detail)
    end
end
