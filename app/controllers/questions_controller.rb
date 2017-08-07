class QuestionsController < ApplicationController
  def answer
    @inquiry = params[:query]
    @answer = coach_answer_enhanced(@inquiry)
  end

  def ask
  end

  def coach_answer(your_message)
      if your_message.include? "?"
        return "Silly question, get dressed and go to work!"
      elsif your_message == "I am going to work right now!"
        return ""
      else
        return "I don't care, get dressed and go to work!"
      end
    end

    def coach_answer_enhanced(your_message)
      if your_message.upcase.include? "?"
        return "I can feel your motivation! Silly question, get dressed and go to work!"
      elsif your_message == "I am going to work right now!".upcase
        return ""
      else
        return "I can feel your motivation! I don't care, get dressed and go to work!"
      end
    end


end
