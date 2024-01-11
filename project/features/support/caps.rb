module Caps
  $keggoo_mobile = {
    ########### ANDROID ###########
    'ANDROID' => {
      'appium:appPackage' => E2E_APP_PACKAGE,
      'appium:appActivity' => E2E_APP_ACTIVITY,
      'uftm:oauthClientId' => E2E_AUTH_CLIENT_ID,
      'uftm:oauthClientSecret' => E2E_CLIENT_SECRET,
      'uftm:tenantId' => E2E_TENANT_ID,
      'appium:udid' => E2E_UUID_CELL_PHONE,
      'platformName' => 'Android',
      'appium:automationName' => 'UiAutomator2',
      'appium:settings[waitForIdleTimeout]' => 100
    },
    'IOS' => {
      "appium:bundleId": E2E_BUNDLE_ID_IOS,
      "uftm:oauthClientId": E2E_AUTH_CLIENT_ID,
      "uftm:oauthClientSecret": E2E_CLIENT_SECRET,
      "uftm:tenantId": E2E_TENANT_ID,
      "appium:udid": E2E_UUID_CELL_PHONE,
      "platformName": 'iOS',
      "appium:automationName": 'XCUITest'
    }
  }
end
