//
//  main.swift
//  ContactManagerCLI
//
//  Created by kanu priya on 04/03/26.
//

import Foundation

struct Contact{
    var name: String //using variable bc we might need to change the contact information
    var phone: String
}

func main(){
    
    print("Contact Manager")
    
    print("1 Add Contacts")
    print("2 Remove Contacts")
    print("3 Exit")
    
    guard let choice = readLine() else{
        print("Input Invalid")
        return //what are we returning
    }
    
    print("User chose:", choice)
    var contacts: [Contact] = []
    
    switch choice {
        
    case "1":
        print("Enter phone:", terminator: " ")
        guard let number = readLine(), !number.isEmpty else{
            print("Number cannot be empty")
            return //terminating this whole process and going back to which func called it
        }
        print("Enter name:", terminator: " ")
        guard let name = readLine(), !name.isEmpty else{
            print("Name cannot be empty")
            return
        }
        
        let contact = Contact(name:name, phone: number)
        contacts.append(contact)
        
        print("Added",contact.name,"-", contact.phone)
    case "2":
        print("Removing Contact..")
        
    case "3":
        print("Exit")
        
    default:
        print("Invalid Option")
    }
    
}
main()
