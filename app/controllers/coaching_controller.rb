class CoachingController < ApplicationController
  def answer
    @question = params[:query]
      if @question == @question.upcase
        @answer = coach_answer_enhanced(@question)
      else
        @answer = coach_answer(@question)
      end
  end

  def ask
  end


  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.include? "?"
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    else
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end
end



