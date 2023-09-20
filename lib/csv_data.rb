require 'csv'
require 'pry'
require_relative '../config/environment.rb'

class CSVData

    def make_jobs
        CSV.foreach(('csv_files/jobs.csv'), headers: true, col_sep: ",") do |row|
            job = Job.new row
        end
    end

    def make_jobseekers
        CSV.foreach(("csv_files/jobseekers.csv"), headers: true, col_sep: ",") do |row|
            jobseeker = Jobseeker.new row
        end
    end 

    def make_job_jobseekers
        jobseekers = Jobseeker.all
        jobseekers.each do |jobseeker|
            jobs = Job.all
            jobs.each do |job|
                JobJobseeker.new job: job, jobseeker: jobseeker
            end
        end
    end

end


