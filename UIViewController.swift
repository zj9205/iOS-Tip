// present controller with modal style
guard let controller: TutorialViewController = UIStoryboard.Tutorial.instance() else { return }
controller.modalPresentationStyle = .overFullScreen
DebugTools.share.log(logMessage: "Show Tutorial Page")
self.present(controller, animated: true) { }
