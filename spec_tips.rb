# Comprehensive style guide's:
# http://www.betterspecs.org/
# https://github.com/rubocop-hq/rspec-style-guide

BASIC SET UP EXAMPLE

describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end
  end
  end


NESTED EXAMPLES

  RSpec.describe "something" do
  context "in one context" do
    it "does one thing" do
    end
  end

  context "in another context" do
    it "does another thing" do
    end
  end
end

ONE LINER EXAMPLE
#(Implicit)
RSpec.describe Array do
  describe "when first created" do
    # Rather than:
    # it "should be empty" do
    #   subject.should be_empty
    # end

    it { should be_empty }
    # or
    it { is_expected.to be_empty }
  end
end
# (Explicit)
RSpec.describe Array do
  describe "with 3 items" do
    subject { [1,2,3] }
    it { should_not be_empty }
    # or
    it { is_expected.not_to be_empty }
  end
end

USING SUBJECT/ALIAS METHODS TO REFER TO CLASS BEING TESTED
# SUBJECT
describe MyObject do

  it 'is of class MyObject' do
    expect(subject).to be_instance_of MyObject
  end

end
# ALIAS
describe MyObject do
  alias_method :myobject, :subject

  it 'is of class MyObject' do
    expect(myobject).to be_instance_of MyObject
  end

end

# PREDICATE MATCHERS - CAN BE USED ANY TIME WE'RE WORKING WITH METHODS THAT END WITH A ?
# Behind the scenes, RSpec takes everything after the be_/has_ - adds a question
# mark to the end, then calls that method, expecting it to return a truthy value.
