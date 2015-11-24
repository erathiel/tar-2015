# in spec/heap_sort_spec.rb
require 'simplecov'
SimpleCov.start

require 'heap_sort'

describe '#heapify' do
    context 'when working correctly' do
        it { expect { (heapify([2,5,4], 2, [2,5,4].length)) }.to_not raise_error }
    end
end

describe '#buildheap' do
    context 'when executed' do
        it { expect { (buildheap([1,2], [1,2].length)) }.to_not raise_error }
    end
	context 'when supplied with typical array' do
		it { expect(buildheap([5,6,1,3,8,2], [5,6,1,3,8,2].length)).to match_array([8,6,5,3,2,1]) }
	end
	context 'when supplied with negative array' do
		it { expect(buildheap([-1,-6,-3,-8,-2], [-1,-6,-3,-8,-2].length)).to match_array([-1,-2,-3,-6,-8]) }
	end
	context 'when supplied with mixed array' do
		it { expect(buildheap([5,2,-3,1,-1,0], [5,2,-3,1,-1,0].length)).to match_array([5,2,1,0,-1,-3]) }
	end
	context 'when supplied with empty array' do
		it { expect(buildheap([], [].length)).to be_empty }
	end
	context 'when supplied with inproper array length' do
		it { expect { (buildheap([1,5,3], 5)) }.to raise_error(NoMethodError) }
		it { expect(buildheap([1,5,3], 2)).to contain_exactly(5,3,1) }		
	end
	context 'when supplied with invalid array' do
		it { expect { (buildheap([nil,nil,4,nil], [nil,nil,4,nil].length)) }.to raise_error(ArgumentError) }
	end
end

describe '#heapsort' do
    context 'when executed' do
        it { expect { (heapsort([1,2,3], [1,2,3].length)) }.to_not raise_error }
    end
	context 'when supplied with typical array' do
		it { expect(heapsort([1,6,3,4,8,6,0], [1,6,3,4,8,6,0].length)).to match_array([0,1,3,4,6,6,8]) }
	end
	context 'when supplied with negative array' do
		it { expect(heapsort([-5,-4,-8,-2,-1], [-5,-4,-8,-2,-1].length)).to match_array([-8,-5,-4,-2,-1]) }
	end
	context 'when supplied with mixed array' do
		it { expect(heapsort([6,-2,1,-7,5], [6,-2,1,-7,5].length)).to match_array([-7,-2,1,5,6]) }
	end
	context 'when supplied with empty array' do
		it { expect(heapsort([], [].length)).to be_empty }
	end
	context 'when supplied with broken array' do
		it { expect { (heapsort([1,nil,nil,5,7,nil], [1,nil,nil,5,7,nil].length)) }.to raise_error(ArgumentError) }
	end
	context 'when supplied with inappropiate array length' do
		it { expect { (heapsort([1,2], 4)) }.to raise_error(NoMethodError) }
		it { expect(heapsort([1,6,3], 2)).to match_array([1,6,3]) }
	end
end
