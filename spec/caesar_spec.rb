require_relative '../caesar'


describe Caesar do
  it 'stuff' do
  c=Caesar.new
  d = c.shift('What a String', 5)
  expect(d).to eq('Bmfy f Xywnsl')
  end
end
