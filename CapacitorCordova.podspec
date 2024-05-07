require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
prefix = if ENV['NATIVE_PUBLISH'] == 'true'
           'ios/'
         else
           ''
         end

Pod::Spec.new do |s|
  s.name         = 'CapacitorCordova'
  s.module_name  = 'Cordova'
  s.version      = '5.7.5'
  s.summary      = 'Capacitor Cordova Compatibility Layer'
  s.homepage     = 'https://capacitorjs.com'
  s.license      = 'MIT'
  s.authors      = { 'Ionic Team' => 'hi@ionicframework.com' }
  s.source       = { git: 'https://github.com/ionic-team/capacitor', tag: s.version.to_s }
  s.platform     = :ios, 12.0
  s.source_files = "ios/CapacitorCordova/CapacitorCordova/**/*.{h,m}"
  s.public_header_files = "ios/CapacitorCordova/CapacitorCordova/Classes/Public/*.h",
                          "ios/CapacitorCordova/CapacitorCordova/CapacitorCordova.h"
  s.module_map = "ios/CapacitorCordova/CapacitorCordova/CapacitorCordova.modulemap"
  s.resources = ["ios/CapacitorCordova/CapacitorCordova/PrivacyInfo.xcprivacy"]
  s.requires_arc = true
  s.framework    = 'WebKit'
end
