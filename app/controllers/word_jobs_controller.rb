class WordJobsController < ApplicationController
  before_action :set_word_job, only: [:show, :edit, :update, :destroy]

  # GET /word_jobs
  # GET /word_jobs.json
  def index
    @word_jobs = WordJob.all
  end

  # GET /word_jobs/1
  # GET /word_jobs/1.json
  def show
  end

  # GET /word_jobs/new
  def new
    @word_job = WordJob.new
  end

  # GET /word_jobs/1/edit
  def edit
  end

  # POST /word_jobs
  # POST /word_jobs.json
  def create
    @word_job = WordJob.new(word_job_params)

    respond_to do |format|
      if @word_job.save
        format.html { redirect_to @word_job, notice: 'Word job was successfully created.' }
        format.json { render :show, status: :created, location: @word_job }
      else
        format.html { render :new }
        format.json { render json: @word_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_jobs/1
  # PATCH/PUT /word_jobs/1.json
  def update
    respond_to do |format|
      if @word_job.update(word_job_params)
        format.html { redirect_to @word_job, notice: 'Word job was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_job }
      else
        format.html { render :edit }
        format.json { render json: @word_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_jobs/1
  # DELETE /word_jobs/1.json
  def destroy
    @word_job.destroy
    respond_to do |format|
      format.html { redirect_to word_jobs_url, notice: 'Word job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_job
      @word_job = WordJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_job_params
      params.require(:word_job).permit(:last_word)
    end
end
