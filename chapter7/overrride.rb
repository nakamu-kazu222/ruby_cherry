class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end


class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    # superでスーパークラスのto_sメソッドを呼び出す
    "#{super}, running_time: #{running_time}"
  end
end


dvd = DVD.new('An awesome film', 3000, 120)
p dvd.to_s #=> "name: An awesome film, price: 3000, running_time: 120"