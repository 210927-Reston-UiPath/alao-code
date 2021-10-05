class calculation
    Implements igrade
    Sub initial() Implements igrade.Start
        'dim Subjact as string 'I can not use 'property' in here. it makes me have error 
        'dim result as string
        dim repeat as Boolean = True
        Console.WriteLine("What is your name? ")
        dim name = Console.Readline() 
        'Console.WriteLine("Hey, " + name)
        Console.WriteLine("Input Your Subjact:")
        dim Subjact as string = Console.Readline()
        do While repeat
            Console.WriteLine("Input your Grade in points:")
            dim result as Double = Console.Readline()
            Console.WriteLine("Finish?(Done(D)/Continues(C)")
            dim input as string = console.ReadLine()
            Select Case input
                Case "c"
                    Console.WriteLine("Next Subjact: ")
                    Subjact = console.Readline()
                Case "d"
                    Console.WriteLine("Calculating the GPA.")
                    'need to add calculation function
                    repeat = False 
            End Select
        loop
    End Sub
    
end class