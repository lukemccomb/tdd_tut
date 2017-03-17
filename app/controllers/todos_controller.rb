class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = Todo.where(email: user_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params.merge(email: user_email))
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def user_email
    session[:current_email]
  end
end
