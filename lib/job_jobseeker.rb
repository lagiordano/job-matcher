require_relative '../config/environment'

class JobJobseeker
    
    attr_reader :job, :jobseeker
    attr_accessor :matching_skill_count, :matching_skills_percent

    @@all = []

    def initialize job:, jobseeker:
        @job = job
        @jobseeker = jobseeker
        @@all << self
        self.match_skills_count_and_percent
    end

    def self.all
        @@all
    end

    def match_skills_count_and_percent
        required_skills = self.job.required_skills
        matched_skills = self.jobseeker.skills & required_skills
        self.matching_skill_count = matched_skills.size
        self.matching_skills_percent = ((self.matching_skill_count.to_f/required_skills.size) * 100).to_i
    end


end