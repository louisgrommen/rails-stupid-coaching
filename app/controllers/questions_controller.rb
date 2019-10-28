# Controller
class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
      @img = 'https://owips.com/sites/default/files/clipart/hat-clipart/324387/hat-clipart-drill-team-324387-243390.gif'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
      @img = 'https://media.istockphoto.com/illustrations/drill-sergeant-illustration-id96421386?k=6&m=96421386&s=612x612&w=0&h=32T8D06gJ935r9CU5LrkGXNK8rGJ0eyyoNKFfH9m2jM='
    else
      @answer = "I don't care, get dressed and go to work!"
      @img = 'https://media.istockphoto.com/illustrations/drill-sergeant-illustration-id96421386?k=6&m=96421386&s=612x612&w=0&h=32T8D06gJ935r9CU5LrkGXNK8rGJ0eyyoNKFfH9m2jM='
    end
  end
end
