class TodosController < ApplicationController
    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            redirect_to root_path
        else
            render "static_pages/top"
        end
    end

    private

    def todo_params
        params.require(:todo).permit(:title, :body)
    end
end
