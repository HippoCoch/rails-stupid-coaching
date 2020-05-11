class QuestionsController < ApplicationController
  def ask
    # if params[:question].present?
    #   @questions = @questions.select { |question| question.start_whit?(params[:question]) }
    # else
    #   @questions = @answer
    # end
  end

  def answer
    @question = params[:question]
    if params[:question].downcase == 'i am going to work right now!'
      @answer = 'Great !'
    elsif params[:question].end_with? == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
