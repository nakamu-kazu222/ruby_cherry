class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new('A great movie', 1000)
product.name  #=> "A great movie"
product.price #=> 1000


class DVD < Product
  # nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスにも存在している属性
    @name = name
    @price = price

    # スーパークラスのinitializeメソッドを呼び出す
    # この方法でも呼び出せる
    # super(name, price)

    # DVDクラス独自の属性
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
dvd.name         #=> "A great movie"
dvd.price        #=> 1000
dvd.running_time #=> 120