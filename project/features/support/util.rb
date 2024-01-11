# Usar método "find_element" do ruby appium
# def search_element(type, locator, timeout_arg = 30)
#   element = nil
#   counter = 0
#   timeout_arg.times do
#     counter += 1
#     begin
#       element = find_element(type, locator)
#       break
#     rescue
#       sleep 1
#     end
#   end
#   if element == nil
#     raise StandardError, "Can not found element with type #{type} and locator #{locator} after #{counter} tries..."
#   else
#     element
#   end
# end

# Usar método "find_element" do ruby appium
# def click_element(type, locator, timeout_arg = 5)
#   find_element(type, locator, timeout_arg).click
# end

# #Usar método "find_element" do ruby appium
# def espera_elemento_visivel(type, locator, timeout_arg = 5)
#   find_element(type, locator, timeout_arg)
# end

def wait_constructor
  return Selenium::WebDriver::Wait.new(timeout: 30)
end

def swipe_down(times, type, element)
  screen_size = driver.window_size
  width = screen_size.width
  height = screen_size.height

  start_x = width / 2
  start_y = height * 0.8
  end_x = width / 2
  end_y = height * 0.2

  (0...times).each do
    driver.swipe(start_x: start_x, start_y: start_y, end_x: end_x, end_y: end_y, duration: 500)
    ele = check_element(type, element)
    return ele unless ele.nil?
  end
end

def wait_element(type, element)
  begin
    wait = self.wait_constructor
    wait.until { find_element(type, element) }
  rescue
    $erro = "\n\nElemento não encontrado\n\n"
    raise $erro
  end
end

def click_element_when_it_clickable(type, element)
  sleep 3
  wait = self.wait_constructor
  element = wait.until {
    temp_element = wait_element(type, element)
  }
  element.click if element.enabled? && element.displayed?
end

def swipe_vertical(x, y, w, z, duration)
  coord = {start_x: x, start_y: y, offset_x: w, offset_y: z, durattion: duration}
            Appium::TouchAction.new.swipe(coord).perform
end

def scroll_vertical(times, type, element)
  ele = check_element(type, element) # Verifica se o elemento é visivel
  return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel

  (0...times).each do # continue o scroll procurando pelo elemento por uma quantidade de tempo 'times'
    Appium::TouchAction.new.swipe(start_x: 518, start_y: 850, end_x: 518, end_y: 450).perform # scroll down
    ele = check_element(type, element) # Verifica se o elemento é visivel
    return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel
  end
end

def scroll_vertical_up(times, type, element)
  ele = check_element(type, element) # Verifica se o elemento é visivel
  return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel

  (0...times).each do # continue o scroll procurando pelo elemento por uma quantidade de tempo 'times'
    Appium::TouchAction.new.swipe(start_x: 518, start_y: 450, end_x: 518, end_y: 850).perform # scroll down
    ele = check_element(type, element) # Verifica se o elemento é visivel
    return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel
  end
end

def scroll_vertical_medium(times, type, element)
  ele = check_element(type, element) # Verifica se o elemento é visivel
  return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel

  (0...times).each do # continue o scroll procurando pelo elemento por uma quantidade de tempo 'times'
    Appium::TouchAction.new.swipe(start_x: 468, start_y: 1200, end_x: 468, end_y: 600).perform # scroll down
    ele = check_element(type, element) # Verifica se o elemento é visivel
    return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel
  end
end

# Scroll Vertical para Mercado
def scroll_vertical_high(times, type, element)
  ele = check_element(type, element) # Verifica se o elemento é visivel
  return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel

  (0...times).each do # continue o scroll procurando pelo elemento por uma quantidade de tempo 'times'
    Appium::TouchAction.new.swipe(start_x: 468, start_y: 1750, end_x: 468, end_y: 700).perform # scroll down
    ele = check_element(type, element) # Verifica se o elemento é visivel
    return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel
  end
end

def scroll_horizontal(times, type, element, el_start, el_end)
  el_start = find_element(:xpath, el_start)
  screen_x_start = el_start.location.x
  screen_y_start = el_start.location.y
  el_end = find_element(:xpath, el_end)
  screen_x_end = el_end.location.x
  screen_y_end = el_end.location.y
  ele = check_element(type, element) # Verifica se o elemento é visivel
  return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel

  (0...times).each do # continue o scroll procurando pelo elemento por uma quantidade de tempo 'times'
    ele = check_element(type, element) # Verifica se o elemento é visivel
    Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, end_x: screen_x_end, end_y: screen_y_end).perform # scroll down
    return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel
  end
end

def scroll_horizontal_fixo(times, type, element, el_start_y)
  ele = check_element(type, element) # Verifica se o elemento é visivel
  return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel

  y = find_element(:xpath, el_start_y).location.y
  (0...times).each do # continue o scroll procurando pelo elemento por uma quantidade de tempo 'times'
    ele = check_element(type, element) # Verifica se o elemento é visivel
    Appium::TouchAction.new.swipe(start_x: 600, start_y: y, end_x: 399, end_y: y).perform # scroll down
    return ele unless ele.nil? # retorna o elemento se o elemento estiver visivel
  end
end

def check_element(type, locator)
  element_exist = nil
  begin
    element_exist = find_element(type, locator).displayed?
  rescue StandardError
    element_exist = nil
  end
  element_exist
end

# Passar como parametro o primeiro elemento (ponto inicial do scroll) e o segundo elemento(ponto final do scroll)
def scroll_to(el_start, el_end)
  el_start = find_element(:xpath, el_start)
  screen_x_start = el_start.location.x
  screen_y_start = el_start.location.y
  el_end = find_element(:xpath, el_end)
  screen_x_end = el_end.location.x
  screen_y_end = el_end.location.y
  Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, end_x: screen_x_end,
                                end_y: screen_y_end).perform
  $logger.info("Executou o scroll para as coordenadas: screen_x_start #{screen_x_start} - screen_y_start #{screen_y_start} - screen_x_end #{screen_x_end} - screen_y_end #{screen_y_end}")
end

