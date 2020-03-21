class PapersController < ApplicationController

  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(paper_params)
    @paper.save
    redirect_to papers_path
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])
    @paper.update(params[:paper])
  end

  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy

    redirect_to papers_path
  end

  private

  def paper_params
    params.require(:paper).permit(:color, :layers, :pattern, :sweetness, :user_id)
  end
end
