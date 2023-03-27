a = [1, 2, 3, 1, 2, 3]

# 配列から値が奇数の要素を削除する
a.delete_if do |n|
  n.odd?
end
p a #=> [2, 2]