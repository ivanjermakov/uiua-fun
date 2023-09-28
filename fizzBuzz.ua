# create an array of number 1-100
ns ← ∵(+1)⇡[100]
# make a copy of it in a string form "1"-"100"
nsStr ← ∵(□$"_") ns
# every i % 3 == 0 is replaced with "Fizz", everything else is ""
f ← ∵(□▽∶ "Fizz" =0◿3) ns
# every i % 5 == 0 is replaced with "Buzz", everything else is ""
b ← ∵(□▽∶ "Buzz" =0◿5) ns
# every i % 3 == 0 && i % 5 == 0 is replaced with "FizzBuzz", everything else is ""
fb ← ∵(□▽∶ "FizzBuzz" × =0◿5∶ =0◿3 .) ns

# combine them into a 2D array
gs ← [nsStr f b fb]

# run a columnwise map
# |  pick the greatest string of each column
# |  |
⍉ ≡ (⊡⊢⇌⌂.) ⍉gs
