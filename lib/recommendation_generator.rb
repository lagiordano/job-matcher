require_relative '../config/environment.rb'

class RecommendationGenerator


    def sort_recommendations
        job_jobseekers = JobJobseeker.all
        job_jobseekers.sort_by do |j|
            [j.jobseeker.id.to_i, -j.matching_skills_percent, j.job.id.to_i]
        end

    end

    def recommendation_list
        sorted_list = self.sort_recommendations

        puts "\nFirstly, Lauren Giordano is our number one recommendation for ReadyTech's Junior Rails Engineer position! Please see below for other jobseeker recommendations:"
        puts "\njobseeker_id, jobseeker_name, job_id, job_title, matching_skill_count, matching_skill_percent"

        sorted_list.each do |j|
            puts "#{j.jobseeker.id}, #{j.jobseeker.name}, #{j.job.id}, #{j.job.title}, #{j.matching_skill_count}, #{j.matching_skills_percent}%"
        end

    end

end



