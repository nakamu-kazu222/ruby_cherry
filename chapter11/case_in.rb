records = [
  [2021],
  [2019, 5],
  [2017, 11, 25],
]


require 'date'

records.map do |record|
  case record
  in [y]
    Date.new(y, 1, 1)
  in [y, m]
    Date.new(y, m, 1)
  in [y, m, d]
    Date.new(y, m, d)
  end
end
#=> [#<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((2458083j,0s,0n),+0s,2299161j)>]
