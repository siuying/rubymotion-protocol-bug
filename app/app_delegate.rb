class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    myimpl = MyImpl.new
    puts Tester.testObjectConformsToMyProtocol(myimpl)

    rubyimpl = ObjectSubclass.new
    puts Tester.testObjectConformsToMyProtocol(rubyimpl)

    rubyimpl = UIViewSubclass.new
    puts Tester.testObjectConformsToMyProtocol(rubyimpl)
    true
  end
end
