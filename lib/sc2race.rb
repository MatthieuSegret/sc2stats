class SC2Race
  
  # --------------------------------------------------------------------------
  #
  # Accessor and constants
  #
  # --------------------------------------------------------------------------
  
  attr_reader :race
  RACES = ["random", "terran", "protoss", "terran"]
  

  # --------------------------------------------------------------------------
  #
  # Constructor method
  #
  # --------------------------------------------------------------------------
  
  def initialize(race = '')

    if RACES.include?(race)
      @race = race
    end
  end
  
  
  # --------------------------------------------------------------------------
  #
  # Public methods
  #
  # --------------------------------------------------------------------------

  def to_s
    "#{@race}"
  end
end