
class Pizza
  def initialize
    @baked = false
    @slices = 0
  end

  # def baked # this would be a getter method
  #   return @baked
  # end

  def bake
    # change our pizza to being 'baked'
    @baked = true
  end

  def cut
    @slices += 2
  end

  def eat
    if @slices < 1 || @baked == false
      puts "Cannot eat this pizza."
    else
      @slices -= 1
    end
  end

end
