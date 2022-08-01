class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'Say some sentences on the script'
  end

  def fall_in_fire
    'I can not. Please call my agent!'
  end

  def fall_off_ladder
    false
  end
end
