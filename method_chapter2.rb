# 引数なしの場合はcountryに'japan'を設定する
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greet       #=> "こんにちは"
greet('us') #=> "hello"

# ----------------------------------------

# メソッド！による破滅的メソッド
a = 'ruby'

# upcaseだと変数aの値は変化しない
a.upcase  #=> "RUBY"
a         #=> "ruby"

# upcase!だと変数aの値も大文字に変わる
a.upcase! #=> "RUBY"
a         #=> "RUBY"

# ----------------------------------------

# エンドレスメソッド定義
def add(a, b) = a + b

  add(1, 2) #=> 3