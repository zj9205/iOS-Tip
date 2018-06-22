// install pod
sudo gem install cocoapods
pod setup --verbose

// init pod
pod init
pod install
pod install --no-repo-update

pod update
pod update repo-name

// open by Xcode
open -a Xcode Podfile

// pod version
pod --version

// 注意：如出现 Unable to find a specification for 'some pod' 错误，可执行 pod repo update 命令。

// pod with different swift version
post_install do |installer|
    installer.pods_project.targets.each do |target|
        if ['RxSwift', 'RxSwiftExt'].include? target.name
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '3.2'
            end
        end
    end
end
