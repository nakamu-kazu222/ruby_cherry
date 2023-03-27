a = [1, 2, 3, 1, 2, 3]

# do...endの代わりに{}を使用
a.delete_if { |n| n.odd? }

p a