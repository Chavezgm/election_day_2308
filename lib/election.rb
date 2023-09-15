class Election
  attr_reader :year, :races, :candidates

  def initialize(year)
      @year = year
      @races = []
      @candidates = []
  end

  def add_race(race)
     @races << race
  end

  def add_candidate(candidate)
    @candidates << candidate
  end

  def vote_count(name, votes)
    # I was not able to get through this method
    #would like to know how to make this method and the logic behind it
    # would also like to see how to execute iteration 4. 

  end
end