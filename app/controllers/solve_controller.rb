class SolveController < ApplicationController
  def solve
    @ques=Question.all
  end
end
