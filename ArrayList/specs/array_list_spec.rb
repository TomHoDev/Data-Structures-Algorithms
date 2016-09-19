require_relative '../array_list'

describe ArrayList do

  describe 'ArrayList#new' do 
    it 'instantiates a new array with a given size' do 
      expect(ArrayList.new(3).array).to eq ([nil,nil,nil])
    end
  end

end