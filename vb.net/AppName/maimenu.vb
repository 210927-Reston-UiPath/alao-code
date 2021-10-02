Imports System.IO
Imports System.Text.Json
Class MainMenu
    Implements IMenu
    dim friends as List(of Contact) = new List(of Contact)
    dim filename as String = "friend.json"
    dim jsonstring = ""
    sub Initail() Implements IMenu.Start
        Console.WriteLine("Hello World!")
        dim repeat as Boolean = True 
        Do While repeat
            Console.WriteLine("What would you like to do")
            Console.WriteLine("[0] Add a friend")
            Console.WriteLine("[1] Show my friends")
            Console.WriteLine("[x] Exit")
            Dim input as String = Console.Readline() 
            Select Case input
                Case "0"
                    Console.WriteLine("Hello")
                    AddFriend()
                case "1"
                    showfriends()
                Case "x"
                    Console.WriteLine("Bye")
                    repeat = false
            End Select
        loop
    end sub
    Sub AddFriend()
        Console.WriteLine("Name: ")
        dim name as String = Console.Readline()
        Console.WriteLine("Number: ")
        dim number as String = Console.Readline()
        dim newfriend as Contact = new contact(name,number)
        AddFriend2File(newfriend) 
        Console.WriteLine("New Friend Created! " + newfriend.Tostring())
    End Sub
    sub showfriends()
        Console.WriteLine("Friend list plus contact info: ")
        for Each person as contact in getcontactfromfile()
            Console.WriteLine(person.Tostring())
        Next
    end sub
    sub AddFriend2File (ByVal person as contact) 
        dim existingcocntacts as list(of contact) = getcontactfromfile()
        existingcocntacts.add(person)
        jsonstring = jsonserializer.serialize(existingcocntacts)
        File.WriteallText(filename, jsonstring)
    End Sub
    Function getcontactfromfile() As list(of contact)
        Try
            jsonstring = file.ReadAllText(filename, jsonstring)
            return jsonserializer.deserialize(of list(of contact))(jsonstring)
        Catch ex As Exception
            return new list(of contact)
        End Try
        
    End Function
    
End Class
