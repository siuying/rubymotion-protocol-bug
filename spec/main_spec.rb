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
