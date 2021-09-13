## Challenge 1

Order numbers given in a string by their weights.

Weight = sum of all digits in number, e.g.

2000 => 2 + 0 + 0 + 0 = 2

123 => 1 + 2 + 3 = 6

### Test 1

```
Input: "103 123 4444 99 2000"
Result: "2000 103 123 4444 99"
```

### Test 2

```
Input: "2000 10003 1234000 44444444 9999 11 11 22 123"
Result: "11 11 2000 10003 22 123 1234000 44444444 9999"
```

### How to test manually

```ruby
$ pry

> require "./numbers.rb"
=> true

> input = "103 123 4444 99 2000"

> Numbers.sort(input)
=> "2000 103 123 4444 99"
```
