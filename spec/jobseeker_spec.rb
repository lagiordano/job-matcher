require_relative '../config/environment.rb'

describe Jobseeker do 
    
    it 'initializes skills as an array' do 
        expect(Jobseeker.new("id" => 1, "name" => "Jane Doe","skills" => "Ruby, Python, Problem Solving, React").skills).to eq(["Ruby", "Python", "Problem Solving", "React"])
    end
end
