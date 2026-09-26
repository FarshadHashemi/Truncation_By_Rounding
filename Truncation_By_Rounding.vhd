Library IEEE ;
Use IEEE.STD_Logic_1164.All ;
Use IEEE.STD_Logic_Unsigned.All ;

Entity Truncation_By_Rounding is
 Generic(
  I_Data_Length : Integer := 10 ;
  O_Data_Length : Integer := 10 
 ) ;
 Port( 
  I_Data : In  STD_Logic_Vector(I_Data_Length-1 Downto 0) ;
  O_Data : Out STD_Logic_Vector(O_Data_Length-1 Downto 0) 
 ) ;
End Truncation_By_Rounding ;

Architecture Behavioral Of Truncation_By_Rounding Is

Begin

 O_Data <= I_Data(I_Data_Length-1 Downto (I_Data_Length-O_Data_Length)) + I_Data(I_Data_Length-O_Data_Length-1) ;

End Behavioral ;