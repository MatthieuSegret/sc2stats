class SC2PortraitStyle

  # --------------------------------------------------------------------------
  #
  # Accessor
  #
  # --------------------------------------------------------------------------

  attr_reader :image_index, :image_x, :image_y


  # --------------------------------------------------------------------------
  #
  # Constructor method
  #
  # --------------------------------------------------------------------------

  def initialize(image_index = 0, image_x = '0px', image_y = '0px', path = '/images/portraits/')
    @image_index = image_index
    @image_x = image_x
    @image_y = image_y
    @path = path
  end


  # --------------------------------------------------------------------------
  #
  # Public methods
  #
  # --------------------------------------------------------------------------

  def to_s
    "background: url('#{@path}#{@image_index}-90.jpg') #{@image_x} #{@image_y} no-repeat; width: 90px; height: 90px;"
  end

  def as_json(opts={})
    {
      :image_index => @image_index.to_i,
      :image_x => @image_x,
      :image_y => @image_y
    }
  end

end