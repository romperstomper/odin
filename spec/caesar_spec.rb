require_relative '../caesar'


describe Caesar do
  it 'stuff' do
  c=Caesar.new
  d = c.shift('what a string', 5)
  expect(d).to eq('bmfy f xywnsl')
  end
end
