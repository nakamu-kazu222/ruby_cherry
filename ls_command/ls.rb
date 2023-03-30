# 全ファイルの文字数の最大値+1に合わせる
def chara_length(ary)
  max_chara = ary.sort_by(&:size).last.size + 1
  ary.map do |s|
    s.ljust(max_chara)
  end
end

# 3行に別け、名前順にさせる
def file_set(ary)
  column_file = []
  column_count = 3

  # 1行に何個のファイルを格納するか、全部/3行で切り上げで計算
  row_count = ary.size.quo(column_count).ceil

  # 1行にrow_count分のファイルを格納し、スライスして分ける
  ary.each_slice(row_count) do |file| 
    column_file << file 
  end

  column_last = column_file[column_count - 1]

  # ファイル数が足りないところを空白にする
  (row_count - column_last.size).times do 
    column_file[-1] << ""
  end

  # 配列の行列を入れ替える
  column_file.transpose
end


def display(ary)
  ary.each do |array|
    array.each do |a|
      print a
    end
    print "\n"
  end
end


ary = Dir.glob("*")
ary = chara_length(ary)
ary = file_set(ary)
display(ary)