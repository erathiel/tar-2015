# in spec/quick_sort_spec.rb
require 'simplecov'
SimpleCov.start

require 'quick_sort'

describe '#partition' do
    context 'when executed correctly' do
        it { expect { (partition([1,2,3], 0, [1,2,3].length - 1)) }.to_not raise_error }
    end
	context 'when supplied with valid array' do
		it { expect(partition([1,5,4,2,3], 0, [1,5,4,2,3].length - 1)).to match(2) }
	end
	context 'when supplied with empty array' do
		it { expect(partition([], 0, [].length - 1)).to match(-2) }
	end
	context 'when using broken array' do
		it { expect { (partition([3,5,nil, nil, nil], 0, [3,5,nil, nil, nil].length - 1)) }.to raise_error(ArgumentError) }
	end
	context 'when using wrong start parameter' do
		it { expect(partition([1,3,5,7,5,2,4], 4, [1,3,5,7,5,2,4].length - 1)).to match(5) }
	end
	context 'when specyifying invalid length of array' do
		it { expect { (partition([1,3,5,7,5,2,4], 4, [1,3,5,7,5,2,4].length)) }.to raise_error(ArgumentError) }
	end
end

describe '#quickSort' do
    context 'when executed correctly' do
        it { expect { (quickSort([1,2,3], 0, [1,2,3].length - 1)) }.to_not raise_error }
    end
    context 'when supplied with typical numbers' do
        it { expect(quickSort([1,5,4,2,3], 0, [1,5,4,2,3].length - 1)).to match_array([1,2,3,4,5]) }
    end
	context 'when supplied with negative numbers' do
		it { expect(quickSort([-5,-2,-1,-6,-9,-4], 0, [-5,-2,-1,-6,-9,-4].length - 1)).to match_array([-9,-6,-5,-4,-2,-1]) }
	end
	context 'when supplied with mixed numbers' do
		it { expect(quickSort([5,-1,3,7,-9,12], 0, [5,-1,3,7,-9,12].length - 1)).to match_array([-9,-1,3,5,7,12]) }
	end
	context 'when supplied with empty array' do
		it { expect(quickSort([], 0 , [].length - 1)).to be_empty }
	end
	context 'when using broken array' do
		it { expect { (quickSort([nil, 1, nil, 6, 2], 0, [nil, 1, nil, 6, 2].length - 1)) }.to raise_error(NoMethodError) }
	end
	context 'when specyifying too big length of array' do
		it { expect { (quickSort([2,6,4,3,1,7], 0, 9)) }.to raise_error(ArgumentError) }
	end
end

