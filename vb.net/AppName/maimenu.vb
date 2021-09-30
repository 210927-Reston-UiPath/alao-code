Class MainMenu
    Implements IMenu
    sub Initailize () Implements IMenu.Start
        Console.WriteLine("Hello World!")
        dim repeat as Boolean = true
        Do While repeat
            Console.WriteLine("What would you like to do")
            Console.WriteLine("[0] Say hello")
            Console.WriteLine("[x] Exit")
            Dim input as String = Console.Readline()
            Select Case input
                Case "0"
                    Console.WriteLine("Hello")
                Case "x"
                    Console.WriteLine("Bye")
                    repeat = false
            End Select
        loop
    end sub
End Class
