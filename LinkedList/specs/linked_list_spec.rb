require_relative '../linked_list'

describe LinkedList do 

  describe 'LinkedList#new' do 
    it 'instantiates a new linked list' do 
      expect(LinkedList.new).to be_instance_of(LinkedList)
    end
  end
  
end