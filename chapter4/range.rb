# ..を使うと5が範囲に含まれる（1以上5以下）
range = 1..5
range.include?(0)   #=> false
range.include?(1)   #=> true
range.include?(4.9) #=> true
range.include?(5)   #=> true
range.include?(6)   #=> false

# ...を使うと5が範囲に含まれない（1以上5未満）
range = 1...5
range.include?(0)   #=> false
range.include?(1)   #=> true
range.include?(4.9) #=> true
range.include?(5)   #=> false
range.include?(6)   #=> false