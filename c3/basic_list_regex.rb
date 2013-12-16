=begin 

^	anchor for the beginning of a line
$	anchor for the end of a line
\A 	anchor for the start of a string
\Z 	anchor for the end of a string
. 	any character
\w 	any letter, digit or underscore
\W 	anything that \w doesn't match 
\d 	any digit
\D 	anything that \w doesn't match 
\s 	Whitespace (spaces, tabs, newlines and so on)
\S 	Non-whitespace (any visible character)


\d+ digit in continuation 
----------

* 	Match zero or more occurences of the preceding character, 
	and match as many as possible.

+	Match one or more occurences of the preceding character, and
	match as many as possible. 

*?	Match zero or more occuresnces of the preceding character, 
	and match as few as possible. 

+? 	Match one or more occurences of the preceding character, and 
	match as few as possible

?	Match either one or none of the preceding character. 

{x}		Match x occurences of the preceding character. 

{x,y}	Match at least x occurences and at most y occurences. 



=end

