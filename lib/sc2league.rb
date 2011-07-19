class SC2League
  
  # --------------------------------------------------------------------------
  #
  # Accessor and constants
  #
  # --------------------------------------------------------------------------
  
  attr_reader :league_name, :league_type, :rang
  LEAGUES = ["no league", "bronze", "silver", "gold", "platinum", "diamond", "master", "grand master"]
  
  
  # --------------------------------------------------------------------------
  #
  # Constructor method
  #
  # --------------------------------------------------------------------------
  
  def initialize(league_name = '', league_type = '1c1', rang = 0)

    if LEAGUES.include?(league_name)
      @league_name = league_name
      @league_type = league_type
      @rang = rang
    end
  end


  # --------------------------------------------------------------------------
  #
  # Public methods
  #
  # --------------------------------------------------------------------------

  def to_s
    "#{@league_name} #{@league_type} Rang #{@rang}"
  end
  
  def as_json(opts={})
    {
      :league_name => @league_name,
      :league_type => @league_type,
      :rang => @rang,
    }
  end
end