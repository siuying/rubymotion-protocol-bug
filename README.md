# A bug on RubyMotion related to Objective-C protocol and NSObject conformsToProtocol:

I have a ruby class (which is a subclass of UIView) that implements all methods in a protocol. 

Calling ```[object conformsToProtocol:@protocol(MyProtocol)]``` return false which should be true.


## Example

```ruby
describe "Protocol test" do
  it "MyImpl should conforms to MyProtocol" do
    impl = MyImpl.new
    Tester.testObjectConformsToMyProtocol(impl).should.be.true
  end

  it "UIViewSubclass should conforms to MyProtocol" do
    impl = UIViewSubclass.new
    Tester.testObjectConformsToMyProtocol(impl).should.be.true
  end

  it "ObjectSubclass should conforms to MyProtocol" do
    impl = ObjectSubclass.new
    Tester.testObjectConformsToMyProtocol(impl).should.be.true
  end
end
```

## Result

Protocol test
  - MyImpl should conforms to MyProtocol
  - UIViewSubclass should conforms to MyProtocol [FAILED]
  - ObjectSubclass should conforms to MyProtocol

Bacon::Error: false.true?() failed
  spec.rb:649:in `satisfy:': Protocol test - UIViewSubclass should conforms to MyProtocol
  spec.rb:663:in `method_missing:'
  spec.rb:279:in `block in run_spec_block'
  spec.rb:403:in `execute_block'
  spec.rb:279:in `run_spec_block'
  spec.rb:294:in `run'

3 specifications (3 requirements), 1 failures, 0 errors
