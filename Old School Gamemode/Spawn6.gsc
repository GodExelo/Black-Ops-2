SpawnWeapon6(Weapon6, Location6, PosInit)
{

	weapon6_model = getWeaponModel(Weapon6);
	if(weapon6_model=="")weapon6_model=Weapon6;
	level.Wep6=spawn("script_model",Location6+(0,0,0));
	level.Wep6 setModel(weapon6_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup6(Weapon6, Location6);
	}
}

SpawnWeap6Red()
{
	level waittill("Red6");
	Pos6 delete();
	wait 1;
	Pos6 = spawnFx(level.waypointRed, level.Pos_6, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos6);
	level waittill("destroyred6");
	Pos6 delete();
}

monitorPickup6(Weapon6, Location6)
{
	for(;;)
	{
		Radius6 = distance(Location6, self.origin);
		if(Radius6<100)
		{
			self waittill("pressed_square");
			if(level.weapons6 == false)
			{
				level.weapons6 = true;
				level thread SpawnWeap6Red();
				wait 0.5;
				level notify("Red6");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon6);
				self switchToWeapon(Weapon6);
				level.Wep6 hide();
				wait 50;
				level.Wep6 Show();
				level notify("destroyred6");
				level.weapons6 = false;
			}
		}
		wait 0.05;
	}
}


