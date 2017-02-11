def relay(array, data_type)
  array.map { |x| x.send('to_s') }
end

p relay([1,2,3,4], nil)
