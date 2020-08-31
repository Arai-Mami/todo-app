class TaskTypesController < ApplicationController
  def index
  end

  def new 
  end
  
  def create
    TaskType.create(type_params)
    redirect_to controller: :tasks, action: :index
  end

    private
      def type_params
        params.require(:task_type).permit(:type_name)
      end
end
