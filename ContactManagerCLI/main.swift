//
//  main.swift
//  ContactManagerCLI
//
//  Created by kanu priya on 04/03/26.
//
// /*
import Foundation

func main(){
    
    let manager = ContactManager()
        
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

        
        switch choice {
            
        case "1":
            
            print("Enter Name: ", terminator: " ")
            guard let name = readLine() else {continue}
            
            print("Enter Number: ", terminator: " ")
            guard let number = readLine() else{continue}
            
            manager.addContact(name: name, number: number)
            
        case "2":
            manager.listContacts()
            
        case "3":
            
            manager.listContacts()
            
            print("Enter number to remove:", terminator: " ")
            guard let input = readLine(),
                   let index = Int(input) else {continue}
            
            manager.removeContact(at: index - 1)
            
        case "4":
            print("Exit")
            return
            
        default:
            print("Invalid Option")
        }
    }
}
main()
/*
import Foundation

//creating struct to add contacts outside of while loop
struct Contact{
    var name: String
    var number: String
}

func main(){
    
     var contacts: [Contact] = []
    
    while true{
        
        //create a menu
        print("1. Add Contact")
        print("2. List Contact")
        print("3. Removed Contact")
        print("4. Exit")
        
        guard let choice = readLine() else{
            print("Input Invalid")
            return
        }
        
        print("User chose \(choice)")
        
        //creating switch statement to work with our menu
        switch choice{
            
        case "1":
            
            //printing a name
            print("Enter name: ", terminator: " ")
            guard let name = readLine(), !name.isEmpty else{
                print("Name cannot be empty")
                continue
            }
            
            //printing a number
            print("Enter a number:", terminator: " ")
            guard let number = readLine(), !number.isEmpty else{
                print("Number cannot be empty")
                continue
            }
            
            let contact = Contact(name:name, number:number) //this contact is valid only for this case
            contacts.append(contact)
            print("Added: \(name)- \(number)")
            
        case "2":
            //error handling:- if no contacts added
            if contacts.isEmpty{
                print("No contacts added")
            }
            
            //listing the added contacts
            print("Contacts:")

                for(index, contact) in contacts.enumerated(){
                    let displayindex = index + 1
                    print("\(displayindex). \(contact.name)- \(contact.number)")
                }

            
        case "3":
            
            if contacts.isEmpty{
                print("Touch some grass, make some friends")
                continue
            }
            
            //list contacts for user to see which one to remove
            print("Contacts:")
            for (index, contact) in contacts.enumerated(){
                let displayindex = index + 1
                print("\(displayindex). \(contact.name)- \(contact.number)")
            }
            print("Enter a number:", terminator: " ")
            //reading user input and adding constraints
            guard let input = readLine(),
                  let number = Int(input),
                  number >= 1 && number <= contacts.count else{
                print("Invalid contact entered")
                continue
            }
            //removing the contact
            let removedcontact = contacts.remove(at: number - 1)
            print("Removed \(removedcontact.name)- \(removedcontact.number)")
            
        case "4":
            print("Exited")
            
        default:
            print("Invalid Option")
            
        }
        
    }
}
main()
*/
