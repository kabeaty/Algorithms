require 'rubygems'
require 'rspec'
require_relative '../sort.rb'

describe 'Sort' do
  describe '.selection_sort' do

    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.selection_sort([])).to eq([])
      end
    end

    context 'when the argument contains one element' do
      it 'returns an array containing that element (string)' do
        expect(Sort.selection_sort(["ant"])).to eq(["ant"])
      end

      it 'returns an array containing that element (integer)' do
        expect(Sort.selection_sort([9])).to eq([9])
      end
    end

    context 'when the argument contains multiple elements' do
      it "returns integers from lowest to highest, all positive integers" do
        expect(Sort.selection_sort([5, 3, 2, 0, 8, 6])).to eq([0, 2, 3, 5, 6, 8])
      end

      it 'returns integers from lowest to highest, including negative integers' do
        expect(Sort.selection_sort([6, -4, 8, 2, 0, -1, 5, -7])).to eq([-7, -4, -1, 0, 2, 5, 6, 8])
      end

      it 'returns floats and integers together from lowest to highest' do
        expect(Sort.selection_sort([7, 0.6, 4.5, 4.2, 5.3, 5.5, 2])).to eq([0.6, 2, 4.2, 4.5, 5.3, 5.5, 7])
      end

      it 'returns just floats from lowest to highest' do
        expect(Sort.selection_sort([4.2, 4.1, 3.2, 7.3, 5.2, 3.1])).to eq([3.1, 3.2, 4.1, 4.2, 5.2, 7.3])
      end

      it "returns strings in alphabetical order by first element" do
        expect(Sort.selection_sort(["ant", "n", "cat", "f", "hello"])).to eq(["ant", "cat", "f", "hello", "n"])
      end

      it "alphabetizes capitalized strings then lowercased strings" do
        expect(Sort.selection_sort(["h", "D", "f", "K", "A", "b", "C"])).to eq(["A", "C", "D", "K", "b", "f", "h"])
      end
    end

    context 'when there are elements that are the same' do
      it 'returns identical strings together' do
        expect(Sort.selection_sort(["hello", "banana", "ant", "banana", "hello", "eat"])).to eq(["ant", "banana", "banana", "eat", "hello", "hello"])
      end

      it 'returns identical integers together' do
        expect(Sort.selection_sort([5, 3, 7, 3, 5, 1])).to eq([1, 3, 3, 5, 5, 7])
      end
    end

  end
end

  describe 'merge' do

    context 'when each array has one element' do
      it 'returns a sorted array of two elements' do
        expect(Sort.merge([9], [5])).to eq([5, 9])
      end
    end

    context 'when both arrays have multiple elements' do

      it 'returns one sorted array containing those elements (same number elements - small array)' do
        expect(Sort.merge([2, 4, 6], [1, 7, 9])).to eq([1, 2, 4, 6, 7, 9])
      end

      it 'returns one sorted array containing those elements (different number elements - small arrays)' do
        expect(Sort.merge([2, 3, 4, 5, 9], [4, 7, 8])).to eq([2, 3, 4, 4, 5, 7, 8, 9])
      end

      it 'returns one sorted array including all duplicate elements' do
        expect(Sort.merge([3, 6, 8, 8], [2, 6, 7, 8])).to eq([2, 3, 6, 6, 7, 8, 8, 8])
      end
    end

    context 'when one array has multiple elements' do

      it 'returns one sorted array with all elements when one array has only one element' do
        expect(Sort.merge([7], [2, 3, 6, 8])).to eq([2, 3, 6, 7, 8])
      end

      it 'returns one sorted array with all elements when one array is empty' do
        expect(Sort.merge([], [4, 7, 9])).to eq([4, 7, 9])
      end
    end

  describe 'mergesort' do

    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.mergesort([])).to eq([])
      end
    end

    context 'when the argument contains one element' do
      it 'returns an array containing that element (string)' do
        expect(Sort.mergesort(["ant"])).to eq(["ant"])
      end

      it 'returns an array containing that element (integer)' do
        expect(Sort.mergesort([9])).to eq([9])
      end
    end

    context 'when the argument contains multiple elements' do
      it "returns integers from lowest to highest, all positive integers" do
        expect(Sort.mergesort([5, 3, 2, 0, 8, 6])).to eq([0, 2, 3, 5, 6, 8])
      end

      it 'returns integers from lowest to highest, including negative integers' do
        expect(Sort.mergesort([6, -4, 8, 2, 0, -1, 5, -7])).to eq([-7, -4, -1, 0, 2, 5, 6, 8])
      end

      it 'returns floats and integers together from lowest to highest' do
        expect(Sort.mergesort([7, 0.6, 4.5, 4.2, 5.3, 5.5, 2])).to eq([0.6, 2, 4.2, 4.5, 5.3, 5.5, 7])
      end

      it 'returns just floats from lowest to highest' do
        expect(Sort.mergesort([4.2, 4.1, 3.2, 7.3, 5.2, 3.1])).to eq([3.1, 3.2, 4.1, 4.2, 5.2, 7.3])
      end

      it "returns strings in alphabetical order by first element" do
        expect(Sort.mergesort(["ant", "n", "cat", "f", "hello"])).to eq(["ant", "cat", "f", "hello", "n"])
      end

      it "alphabetizes capitalized strings then lowercased strings" do
        expect(Sort.mergesort(["h", "D", "f", "K", "A", "b", "C"])).to eq(["A", "C", "D", "K", "b", "f", "h"])
      end
    end

    context 'when there are elements that are the same' do
      it 'returns identical strings together' do
        expect(Sort.mergesort(["hello", "banana", "ant", "banana", "hello", "eat"])).to eq(["ant", "banana", "banana", "eat", "hello", "hello"])
      end

      it 'returns identical integers together' do
        expect(Sort.mergesort([5, 3, 7, 3, 5, 1])).to eq([1, 3, 3, 5, 5, 7])
      end
    end

  end
end






