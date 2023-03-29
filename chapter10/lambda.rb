# ブロック(do...end)をオブジェクトに登録してプログラム内で利用できる
nameconn = proc do |a, b|
  a + "." + b
 end
 ans = nameconn.call("my", "name")
 p ans # "my.name"が表示される

# ----------------------------------------

# procメソッドではなく、lambdaメソッドで代用できる
# クラスをオブジェクトに定義して、使いまわすためのメソッド
nameconn = lambda do |a, b|
  a + "." + b
 end
 ans = nameconn.call("my", "name")
 p ans # "my.name"が表示される

# ----------------------------------------

# lambdaメソッドはアロー演算子で書き換えることができる
 nameconn = -> (a, b) do
  a + "." + b
 end
 ans = nameconn.call("my", "name")
 p ans # "my.name"が表示される