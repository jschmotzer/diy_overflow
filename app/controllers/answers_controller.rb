class AnswersController < ApplicationController
	def create
    puts params
    question = Question.find(params[:answer][:question_id])
		question.answers.create(content: params[:answer][:content])
		redirect_to question_url(question)
	end
end