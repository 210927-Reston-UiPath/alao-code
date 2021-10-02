Class Contact
    Property Name As String
    Property phoneNumber as String 
    Public sub new(ByVal name as String, Byval number as String)
        Me.Name = name
        Me.PhoneNumber = number
    end sub
    Overrides Function Tostring() as String
        return $"Name: {Me.Name} Number: {Me.PhoneNumber}"
    End Function
    
End Class
    