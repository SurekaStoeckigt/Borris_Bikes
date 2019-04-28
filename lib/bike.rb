class Bike
attr_reader :works
#is_broken = 1

def initialize(works=1)
  @works = works
end

  def working?
  if @works == 1
    true
  else
    false
  end
end

end
