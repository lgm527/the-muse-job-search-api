class JobsController < ApplicationController
   before_action :set_job, only: [:show, :update, :destroy]

   # GET /jobs
   def index
     @jobs = Job.all

     render json: @jobs
   end

   # GET /jobs/1
   def show
     render json: @job
   end

   private
     # Use callbacks to share common setup or constraints between actions.
     def set_job
       @job = Job.find(params[:id])
     end

     # Only allow a trusted parameter "white list" through.
     def job_params
       params.require(:job).permit(:title, :location, :company, :company_logo, :description, :apply)
     end


end
