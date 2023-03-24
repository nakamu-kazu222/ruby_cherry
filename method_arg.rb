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