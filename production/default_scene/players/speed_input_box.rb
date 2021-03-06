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
    self.text = "%0.1f" % self.text.to_f
    scene.speed = self.text
  end

end