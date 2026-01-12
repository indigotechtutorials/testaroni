# Testaroni

🍕 a fun and simple testing framework for ruby code.

### Installation

`gem install testaroni`

### Example

file: `my_test.rb`

```ruby
test "Make sure my value is equal" do
  value = 100
  make_sure(value).equals(100)
end

test "Make sure my value is not equal" do
  value = 200
  make_sure(value).is_not(100)
end
```

`ruby my_test.rb`

Output:
```sh
🍕 Running tests now!
✅ Test passed
✅ Test passed
```

### How to use

1. create a ruby file and include testaroni gem

2. write your first test using the test keyword and passing a string to describe the test and a block

3. use the make_sure keyword to start your test evaluation.

4. pass a value to make_sure then you can use one of the evaluation helpers

5. use the equals or is_not keyword for evaluation

6. run the file in terminal