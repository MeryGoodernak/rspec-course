class Person
  attr_reader :script
  def greeting
    sleep(2)
    'Hello!'
  end

  def speak
    @script = Script.build
  end
end
