class TodosController < ApplicationController
end

def new
  @todos = Todo.new
end

def index

end

def create
  todos = Todo.new(params:[todo_params])
  redirect_to todo_index_path
end

private

def todo_params
  params.require(:todo).permit(:detail, :completed)
end
