class StaticPagesController < ApplicationController
    def top
      @todo = Todo.new
    end
end
