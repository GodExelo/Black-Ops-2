SpawnWeapon8(Weapon8, Location8, PosInit)
{

	weapon8_model = getWeaponModel(Weapon8);
	if(weapon8_model=="")weapon8_model=Weapon8;
	level.Wep8=spawn("script_model",Locatio8+(0,0,0));
	level.Wep8 setModel(weapon8_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup8(Weapon8, Location8);
	}
}

SpawnWeap8Red()
{
	level waittill("Red8");
	Pos7 delete();
	wait 1;
	Pos8 = spawnFx(level.waypointRed, level.Pos_8, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos8);
	level waittill("destroyred8");
	Pos8 delete();
}

monitorPickup8(Weapon8, Location8)
{
	for(;;)
	{
		Radius8 = distance(Location8, self.origin);
		if(Radius8<100)
		{
			self waittill("pressed_square");
			if(level.weapons8 == false)
			{
				level.weapons8 = true;
				level thread SpawnWeap8Red();
				wait 0.5;
				level notify("Red8");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon8);
				self switchToWeapon(Weapon8);
				level.Wep8 hide();
				wait 50;
				level.Wep8 Show();
				level notify("destroyred8");
				level.weapons8 = false;
			}
		}
		wait 0.05;
	}
}


