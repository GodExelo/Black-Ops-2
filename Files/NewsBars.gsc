doNewsBar(text)
{
    self endon("disconnect");
    self.txt=self createFontString("objective",1.5);
    self.txt.foreGround=true;
    self.txt setText(text);
    self.txt.archived = true;
	self.txt.hideWhenInMenu = false;
    for(;;)
    {
    self.txt setPoint("CENTER","",800,220);
    self.txt setPoint("CENTER","",-800,220,20);
    wait 20;
    }
}
createRectangle(align,relative,x,y,width,height,color,shader,sort,alpha)
{
barElemBG = newClientHudElem( self );
barElemBG.elemType = "bar";
barElemBG.width = width;
barElemBG.height = height;
barElemBG.align = align;
barElemBG.relative = relative;
barElemBG.xOffset = 0;
barElemBG.yOffset = 0;
barElemBG.children = [];
barElemBG.sort = sort;
barElemBG.color = color;
barElemBG.alpha = alpha;
barElemBG setParent( level.uiParent );
barElemBG setShader( shader, width , height );
barElemBG.hidden = false;
barElemBG setPoint(align,relative,x,y);
return barElemBG;
}

NewsBarsLol()
{
    if (self.NewsBarsLol == false)
        {
            self.NewsBarsLol = true;
            self thread doNewsBar("^3COD4 Old School Gamemode ^7Remake... ; ^3Subscribes ^7: Youtube.com/^7MyExelo ; Press [{+reload}] To ^3Pick Up Weapons.");
            
        }
}

length()
{
	self.texthud = self createFontString("default", 1.8);
	self.texthud setPoint("CENTER", "CENTER", 250, -200);
	self.texthud.color = (1, 1, 1);
	self.newtxt = "";
	self.text = "^3Subs : Youtube.com/MyExelo <3";
	self.texthud.archived = true;
	self.texthud.hideWhenInMenu = false;
	for(;;)
	{
		for(i = 0; i <= self.text.size - 1; i++)
		{
			self.texthud changeFont(.2, 2.2);
			self.newtxt += self.text[i];
			self.texthud setText(self.newtxt);
			self.texthud changeFont(.2, 1.8);
			wait 0.2;
		}
		self.newtxt = "";
		self.texthud setText("");
	}
}

changeFont(time, scale)
{
	start = self.fontscale;
	frames = (time / .05);
	scaleChange = (scale - start);
	scaleChangePer = (scaleChange / frames);
	for(m = 0; m < frames; m++)
	{
		self.fontscale += scaleChangePer;
		wait.05;
	}
}


