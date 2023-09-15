require 'rspec'
require './lib/candidate.rb'
require './lib/race.rb'
require './lib/election.rb'



RSpec.describe Election do
    before do
        @election = Election.new("2023")
        @race1 = Race.new("Texas Governor")
        @race2 = Race.new("Colorado Governor")
    end

    it "has a year attribute" do 
        expect(@election.year).to eq("2023")
    end

    it 'can add races' do
        @election.add_race(@race2)
        expect(@election.races).to eq([@race2])

        @election.add_race(@race1)
        expect(@election.races).to eq([@race2, @race1])
    end

    it 'can add candidates and give me a list of them' do
    

        candidate1 = @race1.register_candidate!({name: "Diana D", party: :democrat})
        candidate2 = @race2.register_candidate!({name: "Roberto R", party: :republican})

        @election.add_candidate(candidate1)
        @election.add_candidate(candidate2)
        expect(candidate1.name).to eq("Diana D")
        expect(candidate2.name).to eq("Roberto R")
        
        expect(@election.candidates.length).to eq(2)

    end

    it ' shows the canidates votes' do 
        candidate1 = @race1.register_candidate!({name: "Diana D", party: :democrat})
        candidate2 = @race2.register_candidate!({name: "Roberto R", party: :republican})

        candidate1.vote_for!
        candidate1.vote_for!
        candidate1.vote_for!
        expect(candidate1.votes).to eq(3)

    end




end