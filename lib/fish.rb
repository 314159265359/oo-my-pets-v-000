class Fish
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def owner
    if self.owner
      self.owner.name
    else nil
    end
end


end
