/*
 
 UNNotificationAction is a class in the User Notifications framework that represents an action that a user can perform on a notification. It is used to create the interactive buttons that appear in notifications.

 To create a UNNotificationAction object, you need to provide the following information:

 Identifier: A unique string that identifies the action.
 Title: The text that is displayed on the button.
 Options: A set of options that control the behavior of the action.
 Some of the available options include:

 authenticationRequired: Indicates whether the user must authenticate before the action can be performed.
 destructive: Indicates whether the action should change the state of the app or notification in a way that cannot be undone.
 foreground: Indicates whether the app should be launched to the foreground when the action is performed.
 Once you have created a UNNotificationAction object, you can add it to a UNNotificationCategory object. A UNNotificationCategory object is a group of related actions that are displayed together in a notification.
 */

import UIKit

//private func createNotificationCategory() -> UNNotificationCategory {
//    let markAsReadAction = UNNotificationAction(identifier: "markAsRead", title: "Mark as Read", options: .foreground)
//
//    let category = UNNotificationCategory(identifier: "myCategory", actions: [markAsReadAction], intentIdentifiers: [])
//
//    return category
//}
