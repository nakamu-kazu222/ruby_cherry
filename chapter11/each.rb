# パターンマッチを使用しない
cars.each do |car|
  if car.key?(:engine) && car.key?(:motor)
    puts "Hybrid: #{car[:name]} / engine: #{car[:engine]} / motor: #{car[:motor]}"
  elsif car.key?(:engine)
    puts "Gasoline: #{car[:name]} / engine: #{car[:engine]}"
  elsif car.key?(:motor)
    puts "EV: #{car[:name]} / motor: #{car[:motor]}"
  end
end
#=> Gasoline: The Beatle / engine: 105ps
#   Hybrid: Prius / engine: 98ps / motor: 72ps
#   EV: Tesla / motor: 306ps

# ----------------------------------------

# パターンマッチを使用する
cars.each do |car|
  case car
  in {name:, engine:, motor:}
    puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}"
  in {name:, engine:}
    puts "Gasoline: #{name} / engine: #{engine}"
  in {name:, motor:}
    puts "EV: #{name} / motor: #{motor}"
  end
end
#=> Gasoline: The Beatle / engine: 105ps
#   Hybrid: Prius / engine: 98ps / motor: 72ps
#   EV: Tesla / motor: 306ps