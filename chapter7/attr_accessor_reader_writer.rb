class User
  # 読み取り用のメソッドだけを定義する
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
user = User.new('Alice')
# @nameの参照はできる
user.name #=> "Alice"

# @nameを変更しようとするとエラーになる
user.name = 'Bob'
#=> undefined method `name=' for #<User:0x0000000158bc7b50 ...> (NoMethodError)

# ----------------------------------------

class User
  # 書き込み用のメソッドだけを定義する
  attr_writer :name

  def initialize(name)
    @name = name
  end
end
user = User.new('Alice')
# @nameは変更できる
user.name = 'Bob'

# @nameの参照はできない
user.name
#=> undefined method `name' for #<User:0x0000000143ad1c60 ...> (NoMethodError)

# ----------------------------------------

class User
  # @nameと@ageへのアクセサメソッドを定義する
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
user = User.new('Alice', 20)
user.name #=> "Alice"
user.age = 30