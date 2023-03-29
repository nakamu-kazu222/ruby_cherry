puts 'Start.'

# 例外処理を組み込んで例外に対処する
begin
  1 + '10'
rescue
  puts '例外が発生したが、このまま続行する'
end

# 例外処理を組み込んだので、最後まで実行可能
puts 'End.'

# ----------------------------------------

# method_1にだけ例外処理を記述する
def method_1
  puts 'method_1 start.'
  begin
    method_2
  rescue
    puts '例外が発生しました'
  end
  puts 'method_1 end.'
end

def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end

def method_3
  puts 'method_3 start.'
  # ZeroDivisionErrorを発生させる
  1 / 0
  puts 'method_3 end.'
end

# 処理を開始する
method_1
#=> method_1 start.
#   method_2 start.
#   method_3 start.
#   例外が発生しました
#   method_1 end.