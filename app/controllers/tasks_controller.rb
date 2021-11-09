class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @completed_message = if @task.completed == true
      "completed."
    else
      "not completed yet."
    end
  end
end
