# in lib/quick_sort.rb

def partition(array, poczatek, dlugosc)
  x = array[dlugosc]
  i = poczatek - 1
  j = poczatek
  (poczatek..dlugosc).each do |j|
    if (array[j] <= x)
      i = i + 1
      y = array[i]
      array[i] = array[j]
      array[j] = y
    end
  end
  if (i < dlugosc) 
  then
    return i
  else 
    return i = i - 1
  end
end

def quickSort(array, poczatek, dlugosc)
   if(poczatek < dlugosc)
      q = partition(array, poczatek, dlugosc)
      quickSort(array, poczatek, q)
      quickSort(array, q+1, dlugosc)
   end
   return array
end