# in lib/heap_sort.rb

def heapify(array, iter, length)
    l = 2 * iter
    r = 2 * iter + 1
    if (l <= length - 1 && array[l] > array[iter])
        largest = l
    else largest = iter
    end
    if (r <= length - 1 && array[r] > array[largest])
        largest = r
    end
    if (largest != iter)
        x = array[iter]
        array[iter] = array[largest]
        array[largest] = x
        heapify(array, largest, length)
    end
end

def buildheap(array, length)
    i = length / 2
    ((i).step(0, -1)).each do |i|
        heapify(array, i, length)
    end
    return array
end

def heapsort(array, length)
    buildheap(array, length)
    n = length
    i = n - 1
    ((i).step(0, -1)).each do |i|
        x = array[0]
        array[0] = array[i]
        array[i] = x
        n = n - 1
        heapify(array, 0, n)
    end
    return array
end