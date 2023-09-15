require 'rspec'
require './lib/candidate.rb'
require './lib/race.rb'


RSpec.describe Race do
    before do
        @race = Race.new("Texas Governor")

    end 

    it 'Race exists' do
        expect(@race).to be_an_instance_of(Race)
    end

    it "Race has an office" do 
        expect(@race.office).to eq("Texas Governor")
    end

    it "Race starts with 0 candidates" do
        expect(@race.candidates).to be_empty
        expect(@race.candidates).to eq([])
    end

    describe "#register_candidate!" do
        before do
        @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
        @candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})
        end


        it 'allows you to register a candidate' do 
            expect(@candidate1.name).to eq("Diana D")
            expect(@candidate1.party).to eq(:democrat)
        end

        it "a candidate enrolled in the race has a class" do 
            expect(@candidate1).to be_an_instance_of(Candidate)
            expect(@candidate1.name).to eq("Diana D")
            expect(@candidate1.party).to eq(:democrat)
        
        end

        it "a candidate enrolled a second candidate" do 

            expect(@candidate2.name).to eq("Roberto R")
            expect(@candidate2.party).to eq(:republican)
        
        end
    end


end