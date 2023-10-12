import UIKit

class User: NSObject,NSCoding {
    
    var nick: String!
    var pass: String!
    var mail: String!
    
    init(nick:String, pass:String, mail:String) {
        self.nick = nick
        self.pass = pass
        self.mail = mail
    }
    static var supportsSecureCoding: Bool {
           return true
       }
    required convenience init?(coder aDecoder: NSCoder) {
        
        let dNick = aDecoder.decodeObject(forKey: "nick") as! String
        let dPass = aDecoder.decodeObject(forKey: "pass") as! String
        let dMail = aDecoder.decodeObject(forKey: "mail") as! String
        
        self.init(nick: dNick, pass: dPass, mail: dMail)
    }
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(nick, forKey: "nick")
        aCoder.encode(pass, forKey: "pass")
        aCoder.encode(mail, forKey: "mail")
    }
    
}
