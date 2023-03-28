# Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # 氏名を作成するメソッド
  def full_name
    "#{first_name} #{last_name}"
  end
end

# ユーザーのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{user.full_name}、年齢: #{user.age}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30


# ----------------------------------------

class User
  def initialize(name)
    @name = name
  end

  # これはインスタンスメソッド
  def hello
    # @nameの値はインスタンスによって異なる
    "Hello, I am #{@name}."
  end
end
alice = User.new('Alice')
# インスタンスメソッドはインスタンス（オブジェクト）に対して呼び出す
alice.hello #=> "Hello, I am Alice."

bob = User.new('Bob')
# インスタンスによって内部のデータが異なるので、helloメソッドの結果も異なる
bob.hello   #=> "Hello, I am Bob."

