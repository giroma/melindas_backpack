class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare_weather_items
    prepare_dayofweek_items
  end

  def items
    @items
  end

  def prepare_weather_items
    # set up local variables used by rest of prepare method
    weather = @attributes[:weather]
    pants_and_shirt

    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end

  end

  def pants_and_shirt
    @items << 'pants'
    @items << 'shirt'
  end

  def prepare_dayofweek_items
    day_of_week = @attributes[:day_of_week]
    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Monday and Thursdays. Wait a sec...
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'

    end
  end
  # Prints a summary packing list for Melinda's backpack
  def print_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
