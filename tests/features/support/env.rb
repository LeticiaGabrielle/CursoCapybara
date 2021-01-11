require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.configure do |config|
    #selenium(firefox)   selenium_chrome(chrome)    selenium_chrome_healess(baixo dos panos)

    #escolher driver padrão a utilizar - nesse caso o chrome
    config.default_driver = :selenium

    #escolher url padrao para acessar
    config.app_host = 'https://automacaocombatista.herokuapp.com'

    #tempo de time out para esperar exibir o elemento na tela
    config.default_max_wait_time = 5
    
end