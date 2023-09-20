require_relative '../config/environment.rb'

describe JobJobseeker do 

    describe '.new' do
        let(:job) {Job.new("id" => 15, "title" => "Ruby Developer", "required_skills" => "Ruby, SQL, Problem Solving, Teamwork")}
        let(:jobseeker) {Jobseeker.new("id" => 1, "name" => "Jane Doe","skills" => "Ruby, Python, Problem Solving, React")}
        it 'gets initialized with a job and jobseeker' do 
            expect{JobJobseeker.new(job: job, jobseeker: jobseeker)}.not_to raise_error
        end
    end


    describe ".match_skills_count_and_percent" do 
        let(:job) {Job.new("id" => 15, "title" => "Ruby Developer", "required_skills" => "Ruby, SQL, Problem Solving, Teamwork")}
        let(:jobseeker) {Jobseeker.new("id" => 1, "name" => "Jane Doe","skills" => "Ruby, Python, Problem Solving, React")}
        let(:job_jobseeker) {JobJobseeker.new(job: job, jobseeker: jobseeker)}


        it "calculates the number of matching skills and assigns value to matching_skill_count" do
            expect(job_jobseeker.matching_skill_count).to eq(2)
        end

        it "calculates the matching skill percentage and assigns value to mathcing_skills_percentage" do 
            expect(job_jobseeker.matching_skills_percent).to eq(50)
        end
    end


end


        

