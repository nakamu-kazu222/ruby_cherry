# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
a.object_id #=> 70182231931400
b.object_id #=> 70182236321960

# cにbを代入する。bとcはどちらも同じオブジェクト
c = b
c.object_id #=> 70182236321960

# メソッドの引数にcを渡す。引数として受け取ったdはcと同じオブジェクト
def m(d)
  d.object_id
end
m(c)        #=> 70182236321960

# equal?メソッドを使ってもよい（trueなら同じオブジェクト）
a.equal?(b) #=> false
b.equal?(c) #=> true