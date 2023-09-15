require 'rspec'
require './lib/candidate.rb'


RSpec.describe Candidate do

    before (:each) do 
        @diana = Candidate.new({name: "Diana D", party: :democrat})
    end
    
    it 'candidate exists' do
        expect(@diana).to be_an_instance_of(Candidate)
    end

    it 'candidate has a name' do
        expect(@diana.name).to eq("Diana D")
        expect(@diana.party).to eq(:democrat)
    end

    it 'candidate has votes initially' do
        expect(@diana.votes).to eq(0)
    end

    it 'candidate can receive votes' do
        @diana.vote_for!
        expect(@diana.votes).to eq(1)
  
        @diana.vote_for!
        expect(@diana.votes).to eq(2)

        @diana.vote_for!
        expect(@diana.votes).to eq(3)
  
        @diana.vote_for!
        expect(@diana.votes).to eq(4)
    end
end