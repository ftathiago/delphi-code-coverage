@ e c h o   o f f  
 : :   s e t u p   f o l l o w i n g   e n v i r o n m e n t   v a r i a b l e s   t o   p o i n t   t o   c o r r e c t   l o c a t i o n   o f   e x t e r n a l   l i b r a r i e s  
  
 S E T   B A S E D I R = % C D %  
 S E T   B U I L D = % B A S E D I R % \ b u i l d  
 S E T   R E P O R T S = % B U I L D % \ r e p o r t s  
 S E T   P R J D I R = % B A S E D I R % \ C o d e C o v e r a g e \ T e s t  
 S E T   P R J = C o d e C o v e r a g e T e s t s  
  
 I F   " % L I B S % " = = " "   S E T   L I B S = % B A S E D I R % \ 3 r d P a r t y  
 I F   " % J C L % " = = " "   S E T   J C L = % L I B S % \ J C L  
 I F   " % J W A P I % " = = " "   S E T   J W A P I = % L I B S % \ J W A P I \ j w a p i 2 . 2 a  
 I F   " % J V C L % " = = " "   S E T   J V C L = % L I B S % \ J V C L  
  
 S E T   D P F = % P R O G R A M F I L E S ( X 8 6 ) %  
 i f   " % D P F % " = = " "   (  
 	 S E T   D P F = " % P R O G R A M F I L E S % "  
 )  
  
 I F   E X I S T   " % D P F % \ E m b a r c a d e r o \ S t u d i o \ 1 4 . 0 \ b i n \ r s v a r s . b a t "   (  
     E C H O   F o u n d   D e l p h i   X E 6  
     C A L L   " % D P F % \ E m b a r c a d e r o \ S t u d i o \ 1 4 . 0 \ b i n \ r s v a r s . b a t "  
 )   E L S E   (  
     : :   c h e c k   f o r   D e l p h i   X E 2  
     I F   E X I S T   " % D P F % \ E m b a r c a d e r o \ R A D   S t u d i o \ 9 . 0 \ b i n \ r s v a r s . b a t "   (  
         E C H O   F o u n d   D e l p h i   X E 2  
         C A L L   " % D P F % \ E m b a r c a d e r o \ R A D   S t u d i o \ 9 . 0 \ b i n \ r s v a r s . b a t "  
     )   E L S E   (  
         : :   D e l p h i   2 0 1 0  
         I F   E X I S T   " % D P F % \ E m b a r c a d e r o \ R A D   S t u d i o \ 7 . 0 \ b i n \ r s v a r s . b a t "   (  
     	 E C H O   F o u n d   D e l p h i   2 0 1 0  
             C A L L   " % D P F % \ E m b a r c a d e r o \ R A D   S t u d i o \ 7 . 0 \ b i n \ r s v a r s . b a t "  
         )   E L S E   (  
             : :   D e l p h i   2 0 0 9  
             I F   E X I S T   " % D P F % \ C o d e G e a r \ R A D   S t u d i o \ 6 . 0 \ b i n \ r s v a r s . b a t "   (  
     	     E C H O   F o u n d   D e l p h i   2 0 0 9  
                 C A L L   " % D P F % \ C o d e G e a r \ R A D   S t u d i o \ 6 . 0 \ b i n \ r s v a r s . b a t "  
             )  
         )  
     )  
 ) 