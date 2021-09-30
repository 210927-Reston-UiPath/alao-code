Imports System

Module Program
    Sub Main(args As String())
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
            End Select
        loop
    End Sub
End Module
