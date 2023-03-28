class Product
  # デフォルトの価格を定数として宣言する
  DEFAULT_PRICE = 100

  attr_reader :name, :price

  # 第2引数priceのデフォルト値を定数DEFAULT_PRICE（つまり0）とする
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
p product.price #=> 100