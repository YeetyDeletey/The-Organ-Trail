//create text, first one at 250,135
//text(250,135,"Many kinds of people made the ")

menuvisual(704,44,sBanner)
menuvisual(704,688,sBanner)

global.menu = 10000;

switch global.eventMenu{
    case 1:
        
        //menuvisual(704, 300, sRockyMountain1);
        
        
        text(250,400,"You come across an injured survivor.\nDo you help them?");
        
        //text(250,460,"You may:")

        button(250,495,"1. Help them recover.",1);
        button(250,530,"2. Leave them on the side of the road",2);
        
        write(250,565,"What is your choice? ",5);
        break;
    case 2:
        text(250, 205, "PlaceHolder 2");
        button(250,380,"1. Option 1",1);
        button(250,415,"2. Option 2",2);
        button(250,450,"3. Option 3",3);
        button(250,485,"4. Option 4",4);
        button(250,520,"5. Option 5",5);
        
        write(250,590,"What is your choice? ",5);
        break;
}