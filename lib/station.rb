class Station

  attr_accessor :trains, :passengers

  def initialize 
    @passengers = []
    @trains = []
  end

  def passengers_count
    @passengers.count
  end

  def touch_in(passenger)
    if @passengers.include? passenger 
      raise "You've already touched in!"
    elsif passenger.balance < 2 then raise "You do not have enough top-up credit"
    else
      @passengers << passenger
    end
  end

  def touch_out(passenger)
    @passengers.delete(passenger)
  end

  def inbound(train)
    @trains << train
  end

  def outbound(train)
    @trains.delete(train)
  end

  def trains_count
    @trains.count
  end

  def stationed?(train)
    @trains.include?(train)
  end

end
