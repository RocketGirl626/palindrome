require('rspec')
require('./lib/palindrome')

describe('String#palindrome') do

  #it("will print out a string") do
  #  expect(("pallap").palindrome()).to(eq("pallap"))
  #end

  #it("will print out the string into an array") do
  #  expect(("pallap").palindrome()).to(eq(["p","a","l","l","a","p"]))
  #end

  it("will take the first letter of the array and push it into the new array") do
    expect(("andrew").palindrome()).to(eq("This is not a palindrome"))
  end

  it("will test whether or not it is a palindrome") do
    expect(("pap").palindrome()).to(eq("This is a palindrome"))
  end
end
