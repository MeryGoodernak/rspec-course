RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_elements_arr = double #[1, 2, 3]
    allow(three_elements_arr).to receive(:first).with(no_args).and_return(1)
    allow(three_elements_arr).to receive(:first).with(1).and_return([1])
    allow(three_elements_arr).to receive(:first).with(2).and_return([1, 2])
    allow(three_elements_arr).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(three_elements_arr.first).to eq(1)
    expect(three_elements_arr.first(1)).to eq([1])
    expect(three_elements_arr.first(2)).to eq([1, 2])
    expect(three_elements_arr.first(3)).to eq([1, 2, 3])
    expect(three_elements_arr.first(200)).to eq([1, 2, 3])
  end
end
