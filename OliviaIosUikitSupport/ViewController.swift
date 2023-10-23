//
//  ViewController.swift
//  OliviaIosUikitSupport
//
//  Created by MAC on 23/10/2023.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openEmployeesPage(_ sender: Any) {
        let route = switch UIDevice.current.userInterfaceIdiom {
          case .phone:
            "phone_employees"
        default:
            "desktop_employees_screen"
        }
        
        let flutterViewController = FlutterViewController(
            project: nil,
            initialRoute: route,
            nibName: nil,
            bundle: nil
        )
        flutterViewController.modalPresentationStyle = .fullScreen
        
        let commonChannel = FlutterMethodChannel(
            name: "common_channel",
           binaryMessenger: flutterViewController.binaryMessenger
        )
        commonChannel.setMethodCallHandler({(call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                    switch call.method {
                      case "headers":
                        result(
                            [
                                "AdminId":"266805",
                                "CompanyId":"1323",
                                "APPID":"ai.paradox.olivia",
                                "UserImpersonationId":"",
                                "Ip":"fe80::ce:aaff:fe1c:1ee8",
                                "mobileapp":"5",
                                "type":"8",
                                "Authorization":"token 779T9YQUNHH6GKYZBYQLYRXC2GNCOKR2AO09AOID",
                                "AppVersion":"1.5.0",
                                "AGENT":"Android-okhttp/4.7.2",
                                "OAUTH2":"0",
                                "public":"1",
                                "ViewId":"1",
                                "Accept-Language":"en",
                                "device":"b3dd48209251306f",
                                "HTTP_TZ_ZONE":"Asia/Ho_Chi_Minh"
                            ]
                        )
                      case "api_url":
                        result("https://ltsstgapi.paradox.ai/api/v1/")
                      default:
                        result(FlutterMethodNotImplemented)
                    }
        })
        
        present(flutterViewController, animated: true)
    }
}

