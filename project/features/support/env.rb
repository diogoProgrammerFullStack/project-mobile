# p "Comeco do env: #{Time.now}"
# require 'appium_lib'
require 'pry'
require 'yaml'
require 'rspec/expectations'
require 'appium_lib'
require 'allure-cucumber'
require 'fileutils'

E2E_HOST_DEVICE_FARM  = ENV['E2E_HOST_DEVICE_FARM']
E2E_APP_PACKAGE       = ENV['E2E_APP_PACKAGE']
E2E_APP_ACTIVITY      = ENV['E2E_APP_ACTIVITY']
E2E_AUTH_CLIENT_ID    = ENV['E2E_AUTH_CLIENT_ID']
E2E_CLIENT_SECRET     = ENV['E2E_CLIENT_SECRET']
E2E_TENANT_ID         = ENV['E2E_TENANT_ID']
E2E_UUID_CELL_PHONE   = ENV['E2E_UUID_CELL_PHONE']
E2E_PLATFORM          = ENV['E2E_PLATFORM']
E2E_BUNDLE_ID_IOS     = ENV['E2E_BUNDLE_ID_IOS']

require_relative 'caps'
World(Caps)

$ambiente_mobile = (ENV['AMBIENTE'] || 'ANDROID')

FileUtils.rm_f(Dir.glob('logs/*.json'))
FileUtils.rm_f(Dir.glob('logs/*.png'))

# CARREFOUR_CLOUD_DATA = YAML.load_file(Dir.pwd + '/features/fixtures/yaml/publicse_perfecto_cloud.yaml')
# FEATURE_NAME = ENV['FEATURE_NAME']

capabilities_BS = {
  appium_lib: {
    server_url: 'https://lucasgambarino_qroPLs:yf1aoeBhc1SCtosBkPPc@hub-cloud.browserstack.com/wd/hub'
  },
  caps: {
    app: 'bs://4c57d89de959c2462723412288de1eb83169684a',
    deviceName: 'Samsung Galaxy S22 Ultra',
    os_version: '12.0',
    platformName: 'Android',
    enableAppiumBehavior: true,
    appPackage: 'br.com.carrefour',
    appActivity: 'br.com.carrefour.features.splash.SplashActivity',
    appiumVersion: 'latest',
    skipDeviceInitialization: true,
    disableWindowAnimation: true,
    locationServicesEnabled: false,
    locationServicesAuthorized: true,
    # newCommandTimeout: 3,
    waitForIdleTimeout: 500,
    waitForSelectorTimeout: 500,
    ignoreUnimportantViews: true,
    simpleBoundsCalculation: true
  }
}

local = {
  caps: {
    automationName: 'Appium',
    platformName: 'Android',
    app: 'C:\Users\Diogo Oliveira\Downloads\app-universal-release (13).apk',
    enableAppiumBehavior: true,
    #appPackage: "br.com.carrefour",
    #appActivity: "br.com.carrefour.features.splash.SplashActivity",
    appiumVersion: "latest",
    skipDeviceInitialization: true,
    disableWindowAnimation: true,
    locationServicesEnabled: false,
    locationServicesAuthorized: true,
    #newCommandTimeout: 3,
    waitForIdleTimeout: 500,
    waitForSelectorTimeout: 500,
    ignoreUnimportantViews: true,
    simpleBoundsCalculation: true,
    noReset: true,
    fullReset: false
  },
}

# local = {
#   caps: {
#     automationName: 'UIAutomator2',
#     platformName: 'Android',
#     deviceName: 'RQ8T205AE4H',
#     app: 'D:\carrefour\project\mobile\c4-cucumber-ruby-mobile\app\app-universal-release (3).apk'
#   }
# }

capabilities_keeggo = {
  'appium_lib' => {
    'server_url': E2E_HOST_DEVICE_FARM
  },
  caps: $keggoo_mobile[$ambiente_mobile]
}

# capabilities para rodar localmente em arquivo externo, para rodar apenas descomente a linha 123 e passe o caps na linha 125
# caps_android_local = Appium.load_appium_txt file: File.expand_path("caps/android_local", __dir__), verbose: true

Appium::Driver.new(local, true)
Appium.promote_appium_methods Object

# p "Final do env: #{Time.now}"
