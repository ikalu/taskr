class TasksController < ApplicationController

  def create
    @task = current_user.tasks.new(task_params)
    @task.save
    
   render @task 
  end
  def edit
    @task = Task.find(params[:id])

  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)

    redirect_to dashboard_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    render inline: "Success!"
  end

  private

  def task_params
    params.
      require(:task).
      permit(:body, :user_id)
  end
end
