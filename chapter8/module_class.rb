# ログ出力用のメソッドを提供するモジュール
# 「ログ出力できる（log + able）」という意味でLoggableという名前を付けた
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # 上で作ったモジュールをincludeする
  include Loggable

  def title
    # logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called.'
    'A great movie'
  end
end

class User
  # こちらも同じようにincludeする
  include Loggable

  def name
    # Loggableモジュールのメソッドが使える
    log 'name is called.'
    'Alice'
  end
end

product = Product.new
product.title
#=> [LOG] title is called.
#   "A great movie"

user = User.new
user.name
#=> [LOG] name is called.
#   "Alice"