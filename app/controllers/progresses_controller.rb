class ProgressesController < ApplicationController
  def create
    Progress.create(text: progress_params[:text], user_id: current_user.id, task_id: progress_params[:task_id])
    redirect_to controller: :tasks, action: :show, id: progress_params[:task_id]
  end

    private
    def progress_params
      params.require(:progress).permit(:text).merge (params.permit(:task_id))
    end
end
