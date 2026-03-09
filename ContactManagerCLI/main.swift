//
//  main.swift
//  ContactManagerCLI
//
//  Created by kanu priya on 04/03/26.
//

import Foundation

struct Contact{
    var name: String //using variable bc we might need to change the contact information
    var number: String
}

func main(){
    
    var contacts: [Contact] = []
    
    while true{
        print("Contact Manager")
        print("1 Add Contacts")
        print("2 List Contacts")
        print("3 Remove Contact")
        print("4 Exit")
        
        guard let choice = readLine() else{
            print("Input Invalid")
            return //what are we returning
        }
        
        print("User chose:", choice)
        
        switch choice {
            
        case "1":
            print("Enter number:", terminator: " ")
            guard let number = readLine(), !number.isEmpty else{
                print("Number cannot be empty")
                continue //terminating this whole process and going back to which func called it
            }
            print("Enter name:", terminator: " ")
            guard let name = readLine(), !name.isEmpty else{
                print("Name cannot be empty")
                continue
            }
            
            let contact = Contact(name:name, number: number)
            contacts.append(contact)
            
            print("Added: \(name)- \(number)")
            
        case "2":
            if contacts.isEmpty{
                continue
            }
            print("Contacts:")
            
            for (index, contact) in contacts.enumerated() {
                let displayIndex = index + 1
                print("\(displayIndex). \(contact.name)- \(contact.number)")
            }
            
        case "3":
            //printing if no contact has been added
            if contacts.isEmpty{
                print("No Contacts added")
                continue
            }
            //printing the list of added contacts
            print("Contacts:")
            for (index, contact) in contacts.enumerated(){
                let displayIndex = index + 1
                print("\(displayIndex). \(contact.name)- \(contact.number)")
            }
            //adding constraint check, reading input and storing them
            print("Enter the index to remove contact:", terminator: " ")//"" added to add space beside cursor
            guard let input = readLine(),
                  let number = Int(input),
                  number >= 1, number <= contacts.count else{
                print("Invalid input")
                continue
            }
            // printing the removed contact
            let removedContact = contacts.remove(at: number - 1)
            print("\(removedContact.name)- \(removedContact.number) has been removed")
            
        case "4":
            print("Exit")
            return
            
        default:
            print("Invalid Option")
        }
    }
}
main()
