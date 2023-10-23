# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

flutter_application_path = '../olivia_flutter_module'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'OliviaIosUikitSupport' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for OliviaIosUikitSupport

  target 'OliviaIosUikitSupportTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'OliviaIosUikitSupportUITests' do
    # Pods for testing
  end

  install_all_flutter_pods(flutter_application_path)

  post_install do |installer|
    flutter_post_install(installer) if defined?(flutter_post_install)
  end

end
