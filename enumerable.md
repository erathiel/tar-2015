# Typ wyliczeniowy (Enumerable):

>Operacje na typach wyliczeniowych i strukturach które dziedziczą po enumerable (np. tablice czy hashe):

Sprawdzanie czy element kolekcji spełnia dany warunek:
```ruby
%w(my wy oni).any? {|blok| blok = wy}
#=>true
```

Tworzenie tablic na podstawie warunku:
```ruby
(1..5).map {|i| i*2 }
#=> [2, 4, 6, 8, 10]
```

Zliczanie wystąpień elementu:
```ruby
liczby = [1,2,3,4,5,5]
liczby.count
#=> 6
liczby.count(5)
#=> 2
```

Iterowanie po typie wyliczeniowym:
```ruby
(1..5).each_slice(3) {|a| p a}
#=> [1, 2, 3]
#=> [4, 5]
```

Wyszukiwanie według wzorca:
```ruby
(1..50).grep 2..5
#=> [2, 3, 4, 5]
```

Grupowanie po wzorcu:
```ruby
(1..10).group_by {|i| i%2}
#=> {0=>[2,4,6,8,10], 1=>[1,3,5,7,9]}
```

Podzial na dwie tablice, z czego pierwsza spelnia warunek a druga nie:
```ruby
(1..10).partition { |i| i.odd? }
#=> [[1,3,5,7,9], [2,4,6,8,10]]
```

Podstawowe sortowanie elementów:
```ruby
%w(jeden, dwa, trzy, cztery).sort_by { |slowo| slowo.length }
#=> ["dwa", "trzy", "cztery", "jeden"]
```

Zmiana elementów w tablice:
```ruby
('a'..'d').to_a
#=> ['a', 'b', 'c', 'd']
```
