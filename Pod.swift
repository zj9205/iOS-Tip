// install pod
sudo gem install cocoapods
pod setup --verbose

// init pod
pod init
pod install
pod update

// open by Xcode
open -a Xcode Podfile

// pod version
pod --version

// 注意：如出现 Unable to find a specification for 'some pod' 错误，可执行 pod repo update 命令。
