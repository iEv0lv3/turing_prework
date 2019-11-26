class Narwhal
  attr_reader :name, :weight

  def initialize(cute: false, weight: nil, name: '')
    @name = name
    @cute = cute
    @weight = weight
  end

  def cute?
    @cute
  end
end
