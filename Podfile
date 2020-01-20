source 'https://github.com/virgilius-santos/public-pod-specs.git'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '12.4'

use_frameworks!

target 'VSMarvelApp' do

  plugin 'cocoapods-keys', {
    :project => "VSMarvelApp",
    :target => "VSMarvelApp",
    :keys => [
      "MarvelApiKey",
      "MarvelPrivateKey"
    ]}

  pod "VService"                , :path => '../VSCommonSwiftLibrary'
  pod "VCore"                   , :path => '../VSCommonSwiftLibrary'
  pod "VComponents"             , :path => '../VSCommonSwiftLibrary'

  target 'VSMarvelAppTests' do
    inherit! :search_paths

  end

end
