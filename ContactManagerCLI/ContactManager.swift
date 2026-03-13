//
//  ContactManager.swift
//  ContactManagerCLI
//
//  Created by kanu priya on 13/03/26.
//

class ContactManager {
    
    var contacts: [Contact] = [] //: for type = for assingment
    
    func addContact(name: String, number: String){
        let contact = Contact(name:name, number:number) //ERROR: did not use Contact() instead used []
        contacts.append(contact) // ??why no print
    }
    
    func listContacts(){
        if contacts.isEmpty{ //ERROR: did not add a default message
            print("Sorry! make some friends") // !!when empty this is not working
        }
        
        for(index, contact) in contacts.enumerated(){
            print("\(index + 1). \(contact.name)- \(contact.number)")
        }
    }
    
    func removeContact(at index : Int){
        if contacts.isEmpty{
            contacts.remove(at: index) // ??how is this index working here and in main?
        }
    }
}
