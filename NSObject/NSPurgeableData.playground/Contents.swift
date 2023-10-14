/*
 The Cocoa framework also provides the NSPurgeableData class to help ensure that your applications do not use up too much memory. The NSPurgeableData class adopts the NSDiscardableContent protocol, which any class can implement to allow memory to be discarded when clients of the class's instances are finished accessing those objects. You should implement NSDiscardableContent when creating objects that have disposable subcomponents. In addition, the NSPurgeableData class does not have to be used in conjunction with NSCache; you may use it independently to get purging behavior.


 */
