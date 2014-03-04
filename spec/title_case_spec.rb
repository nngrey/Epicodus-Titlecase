require('rspec')
require('title_case')

describe('capitalize') do
  it("capitalizes the first letter of a word") do
    capitalize('dolly').should(eq('Dolly'))
  end
  it("capitalizes only the first letter of a word") do
    capitalize("DOLLY").should(eq("Dolly"))
  end
end

describe("find_exceptions") do
  it("returns true if an exception is found") do
    find_exceptions("the").should(eq(true))
  end
end

describe("title_case") do
  it("returns a phrase in proper titlecase") do
    title_case("to The wonder").should(eq("To the Wonder"))
  end
  it("capitalizes each word in a series") do
    title_case("hello dolly").should(eq("Hello Dolly"))
  end
end  

#  it("does not capitalize common prepositions and articles unless it is the first word") do
#    titlecase("to The wonder").should(eq("To the Wonder"))
#  end
#end
