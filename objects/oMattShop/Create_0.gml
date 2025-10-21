global.menu = 0.1

oxenspent = 0
foodspent = 0
clothingspent = 0
ammospent = 0
sparespent = 0

bill = 0

moneylen = string_length(string(global.money))
templimit = 0
tempmoney = 0


menuvisual(160,448,sMatt)
instance_create_depth(375,30,1,oMattBanner)
text(375,65,"  Matt's General Store")
text(375,100,"  Independence, Missouri")
txt = ""; for (i = 0; i < (18-string_length(string(global.smonth)));i++) {txt += " "}; 
txt += global.smonth + " 1, 1848"
text(375,170,txt)
instance_create_depth(375,205,1,oMattBanner)
txt = ""; for (i = 0; i < (4-string_length(string(oxenspent)));i++) {txt += " "}; 
txt += "$" + string(oxenspent) + ".00"
button(375,240,"1. Oxen           " + txt,1)
txt = ""; for (i = 0; i < (4-string_length(string(foodspent)));i++) {txt += " "}; 
txt += "$" + string(foodspent) + ".00"
button(375,275,"2. Food           " + txt,2)
txt = ""; for (i = 0; i < (4-string_length(string(clothingspent)));i++) {txt += " "}; 
txt += "$" + string(clothingspent) + ".00"
button(375,310,"3. Clothing       " + txt,3)
txt = ""; for (i = 0; i < (4-string_length(string(ammospent)));i++) {txt += " "}; 
txt += "$" + string(ammospent) + ".00"
button(375,345,"4. Ammunition     " + txt,4)
txt = ""; for (i = 0; i < (4-string_length(string(sparespent)));i++) {txt += " "}; 
txt += "$" + string(sparespent) + ".00"
button(375,380,"5. Spare Parts    " + txt,5)
button(375,415,"6. Leave store",6)
instance_create_depth(375,450,1,oMattBanner)
txt = "      Total bill: "
for (i = 0; i < (4-string_length(string(bill)));i++) {txt += " "}
txt += "$" + string(bill) + ".00"
text(375,485,txt)
		
txt = "Amount you have:  "
for (i = 0; i < (4-moneylen);i++) {txt += " "}
txt += "$" + string(global.money) + ".00"
text(375,555,txt)

text(375,625," Which item would you")
write(375,660," like to buy? ",6)

