# Tablice:

Tablice to inaczej ułożone kolekcje danych, indeksowane intigerami.
Indeksy tablic w Ruby, podobnie jak w C czy w Javie, zaczynają się od 0.

>1. Tworzenie tablic:
```ruby
sklep = ["jaja", "ser", "mleko"]
#=> ["jaja", "ser", "mleko"]
```

Możliwe jest również tworzenie za pomocą new:
```ruby
sklep = Array.new #Pusta tablica
sklep = Array.new(5)
#=> [nil, nil, nil, nil, nil]
```
Można też wypełnić tablice elementami domyślnymi:
```ruby
sklep = Array.new(3, "chleb")
#=> ["chleb", "chleb", "chleb"]
```

>2. Proste użycie tablic:
Dostęp do elementów:
```ruby
sklep = ["chleb", "bulka", "tosty", "mleko"]

sklep[0]
#=> "chleb"

sklep[5]
#=> nil

sklep[-1]
#=> "mleko"

sklep[1..3]
#=> ["bulka", "tosty", "mleko"]

sklep.at(2)
#=> "tosty"
```

Pierwszy i ostatni element tablicy:
```ruby
sklep.first
#=> "chleb"

sklep.last
#=> "mleko"
```

Ustalenie rozmiaru tablicy:
```ruby
sklep.length
#=> 4
```

Dodawanie elementu do tablicy:
```ruby
sklep = ["chleb", "bulka", "tosty", "mleko"]
sklep.push("jajka")
#=> ["chleb", "bulka", "tosty", "mleko", "jajka"]

sklep << "maslo"
#=> ["chleb", "bulka", "tosty", "mleko", "jajka", "maslo"]

#Dodawanie na poczatek tablicy
sklep.unshift("szynka")
#=> ["szynka", "chleb", "bulka", "tosty", "mleko", "jajka", "maslo"]

#Dodawanie elementu na dowolne miejsce
sklep.insert(2, "maka")
#=> ["szynka", "chleb", "maka", "bulka", "tosty", "mleko", "jajka", "maslo"]
```

Usuwanie elementu:
```ruby
liczby = [1, 2, 3, 4, 5]

#usuwanie ostatniego i pierwszego elementu
liczby.pop
#=> 5
liczby.shift
#=> 1
liczby
#=> [2,3,4]

#usuwanie dowolnego miejsca
liczby.delete_at(1)
#=> 3
liczby
#=> [2,4]
```