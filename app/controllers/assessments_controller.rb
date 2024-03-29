class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]

  def index
    @assessments = Assessment.all
    @stories = Story.all
  end

  def show
  end

  def new
    @assessment = Assessment.new
    @stories = Story.all
  end

  def edit
    @stories = Story.all
  end

  def create
    @assessment = Assessment.new(assessment_params)

    if @assessment.save
      redirect_to @assessment, notice: 'Your assessment was successfully created.'
    else
      render :new
    end
  end

  def update
    if @assessment.update(assessment_params)
      redirect_to @assessment, notice: 'Your assessment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @assessment.destroy
    redirect_to assessments_url, notice: 'Your assessment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @assessment = Assessment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assessment_params
      params.require(:assessment).permit(:story_id, :duplicate, :importance, :valence, :match_value_id, :match_strength, :value_violation, :value_violated_id, :comments, :restrict_comments)
    end
end
