class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:answer]
    if @question === "I am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question === ""
      @answer = "Silly, go back and ask a question"
    else
      @answer = "Nice story"
    end
  end
end
