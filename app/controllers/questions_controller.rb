class QuestionsController < ApplicationController
  def ask
  end

  ANSWER = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def answer

    @questions = params[:question]
    @answer = ""
    if @questions == "I am going to work"
      return @answer = ANSWER[0]
    elsif @questions.include?("?")
      return @answer = ANSWER[1]
    else
      return @answer = ANSWER[2]
    end
  end
end
