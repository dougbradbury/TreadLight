module SpeedInputBox

  def mouse_clicked(event)
    scene.find('speed_value').text = ''
    self.text = ''
  end

  def key_released(event)
    if event.keyCode == 10
      update
    else
      scene.find('speed_value').text = self.text
    end
  end

  def focus_lost(event)
    update
  end

  def update
    speed_value = self.text.to_f
    scene.speed = "%0.1f" % speed_value
    self.text = scene.speed?
  end

end