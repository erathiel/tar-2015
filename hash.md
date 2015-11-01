# Hashe:

Hashe to kolekcje składające się zawsze z pary klucz - wartość. Są bardzo podobne do tablic, jedankże indeksem hashy może być dowolny obiekt, podczas gdy w tablicach to musi być integer.

>1. Tworzenie hashy i dostęp do nich:
Normalna metoda:
```ruby
koszyk = { "Chleb" => 1, "Mleko" => 2 }
```

Obsługa symboli:
```ruby
czcionka = { :font_size => 15, :font_family => "Arial" }
czcionka = { font_size: 15, font_family: "Arial" }
```
Opcja druga jest możliwa kiedy kluczem jest symbol.

Możliwe również tworzenie za pomocą słowa kluczowego new:
```ruby
koszyk = Hash.new
koszyk["Chleb"] = 1
```

Dostęp do wartości hasha:
```ruby
koszyk["Chleb"]
#=>1
```

>2. Podstawowa obsługa hashy:
Przypisanie:
```ruby
koszyk["Mleko"] = 5
#=> {"Chleb"=>1, "Mleko"=>5}

koszyk.store("Jajka", 3)
#=> {"Chleb"=>1, "Mleko"=>5, "Jajka"=>3}
```

Przeszukiwanie tablicy hashy:
```ruby
koszyk.assoc("Chleb")
#=> ["Chleb", "1"]

koszyk.assoc("Ser")
#=> nil
```

Czyszczenie hasha:
```ruby
koszyk.clear
#=> {}
```

Usuwanie pary hasha:
```ruby
koszyk.store("Ser", "Plesniowy")
koszyk.store("Mleko", "UHT")
koszyk.delete("Mleko")
#=>"Plesniowy"
```

>Bardziej zaawansowane operacje:
Inwersja pary klucz <-> hash:
```ruby
koszyk = { "Chleb" => 1, "Mleko" => 2 }
koszyk.invert
#=> {"1"=>"Chleb", "2"=>"Mleko"}
```

Sprawdzenie dlugości tablicy hashy:
```ruby
koszyk.length
#=>2
```

Łączenie 2 tablic hashy:
```ruby
koszyk = { "Chleb" => 1, "Mleko" => 2 }
koszyk_elektroniczny = { "Monitor" => "LCD", "Komputer" => "Laptop" }
koszyk.merge!(koszyk_elektroniczny)
#=> { "Chleb" => 1, "Mleko" => 2, "Monitor" => "LCD", "Komputer" => "Laptop" }
```

Filtrowanie hashy na podstawie predykatu:
```ruby
koszyk = { "Chleb" => 1, "Mleko" => 2 }
koszyk.select {|k,v| k < "Mleko"} 
#=> { "Chleb" => 1 }
```
