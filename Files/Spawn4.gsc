SpawnWeapon4(Weapon4, Location4, PosInit)
{

	weapon4_model = getWeaponModel(Weapon4);
	if(weapon4_model=="")weapon4_model=Weapon4;
	level.Wep4=spawn("script_model",Location4+(0,0,0));
	level.Wep4 setModel(weapon4_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup4(Weapon4, Location4);
	}
}

SpawnWeap4Red()
{
	level waittill("Red4");
	Pos4 delete();
	wait 1;
	Pos4 = spawnFx(level.waypointRed, level.Pos_4, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos4);
	level waittill("destroyred4");
	Pos4 delete();
}

monitorPickup4(Weapon4, Location4)
{
	for(;;)
	{
		Radius4 = distance(Location4, self.origin);
		if(Radius4<100)
		{
			self waittill("pressed_square");
			if(level.weapons4 == false)
			{
				level.weapons4 = true;
				level thread SpawnWeap4Red();
				wait 0.5;
				level notify("Red4");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon4);
				self switchToWeapon(Weapon4);
				level.Wep4 hide();
				wait 50;
				level.Wep4 Show();
				level notify("destroyred4");
				level.weapons4 = false;
			}
		}
		wait 0.05;
	}
}


