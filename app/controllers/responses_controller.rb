class ResponsesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @response = @question.responses.new
    render :new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    if @response.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:question_id])
    @response = Response.find(params[:id])
    render :show
  end

  def edit
    @question = Question.find(params[:question_id])
    @response = Response.find(params[:id])
    render :edit
  end

  def update
    @response = Response.find(params[:id])
    if @response.update(response_params)
      redirect_to question_path(@response.question)
    else
      render :edit
    end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    redirect_to question_path(@response.question)
  end

  # def best_answer
  #     @response = Response.find(params[:id])

  private
  def response_params
    params.require(:response).permit(:content)
  end
end
