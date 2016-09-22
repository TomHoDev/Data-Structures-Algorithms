require_relative '../linked_list'

describe LinkedList do 
  let(:node0) {Node.new(0)}
  let(:node1) {Node.new(1)}
  let(:node2) {Node.new(2)}
  let(:list) { LinkedList.new(node0) }

  describe 'LinkedList#new' do 
    it 'instantiates a new linked list' do 
      expect(LinkedList.new).to be_instance_of(LinkedList)
    end
  end

  describe 'LinkedList#list' do 
    it 'lists nodes in the list' do 
      node0.insert_after(node1)
      node1.insert_after(node2)
      expect(list.list).to eq('0, 1, 2')
    end 
  end

end