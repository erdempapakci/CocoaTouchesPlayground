/*
 NSFileManager is a class in Apple's Foundation framework that provides a convenient and comprehensive API for managing files and directories on the file system. It allows you to perform various file operations, such as creating, copying, moving, and deleting files and directories, as well as querying and modifying file attributes.


 */

import Foundation

let fileManager = FileManager.default

if fileManager.fileExists(atPath: "/path/to/file.txt") {
    print("File exists.")
} else {
    print("File does not exist.")
}
