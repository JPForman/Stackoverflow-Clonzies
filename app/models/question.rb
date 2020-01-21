class Question < ApplicationRecord
  has_many :responses, dependent: :destroy


  def vote_up
    @question = Question.find(params[:id])
    @question.vote_tally += 1
  end

  def vote_down
    @question = Question.find(params[:id])
    @question.vote_tally -= 1
  end

end
