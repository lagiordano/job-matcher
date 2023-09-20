
require_relative '../config/environment.rb'

describe Job do 
    it 'initializes required_skills as an array' do 
        expect(Job.new("id" => 15, "title" => "Ruby Developer", "required_skills" => "Ruby, SQL, Problem Solving, Teamwork").required_skills).to eq(["Ruby", "SQL", "Problem Solving", "Teamwork"])
    end
end
