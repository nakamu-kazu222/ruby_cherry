# Minitestのライブラリ
require 'minitest/autorun'

# Minitest::Testを継承
class SampleTest < Minitest::Test
  # test_で始まるメソッドを探して実行
  def test_sample
    # assert_equal 期待する結果,テスト対象となる値や式
    # 'ruby'.upcaseの実行結果が'RUBY'になることを検証
    assert_equal 'RUBY', 'ruby'.upcase
  end
end