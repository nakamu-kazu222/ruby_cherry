class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなしでnameメソッドを呼ぶ
    "Hello, I am #{name}."
  end

  def hi
    # self付きでnameメソッドを呼ぶ
    "Hi, I am #{self.name}."
  end

  def my_name
    # 直接インスタンス変数の@nameにアクセスする
    "My name is #{@name}."
  end
end
user = User.new('Alice')
user.hello   #=> "Hello, I am Alice."
user.hi      #=> "Hi, I am Alice."
user.my_name #=> "My name is Alice."

# ----------------------------------------

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # selfなしでname=メソッドを呼ぶ（？）
    # 「nameというローカル変数に”Bob”という文字列を代入した」と解釈してしまう
    # 本当はself.name = 'Bob'とする
    name = 'Bob'
  end

  def rename_to_carol
    # self付きでname=メソッドを呼ぶ
    self.name = 'Carol'
  end

  def rename_to_dave
    # 直接インスタンス変数を書き換える
    @name = 'Dave'
  end
end
user = User.new('Alice')

# Bobにリネーム...できていない！！
user.rename_to_bob
user.name #=> "Alice"

# Carolにリネーム
user.rename_to_carol
user.name #=> "Carol"

# Daveにリネーム
user.rename_to_dave
user.name #=> "Dave"
