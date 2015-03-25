SpawnWeapon1(Weapon, Location, PosInit)
{

	weapon_model = getWeaponModel(Weapon);
	if(weapon_model=="")weapon_model=Weapon;
	level.Wep=spawn("script_model",Location+(0,0,0));
	level.Wep setModel(weapon_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup(Weapon, Location);
	}
}

SpawnWeap1Red()
{
	level waittill("Red1");
	Pos1 delete();
	wait 1;
	Pos1 = spawnFx(level.waypointRed, level.Pos_1, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos1);
	level waittill("destroyred1");
	Pos1 delete();
}

monitorPickup(Weapon, Location)
{
	for(;;)
	{
		Radius = distance(Location, self.origin);
		if(Radius < 100)
		{
			self waittill("pressed_square");
			if(level.weapons == false)
			{
				level.weapons = true;
				level thread SpawnWeap1Red();
				wait 0.5;
				level notify("Red1");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon);
				self switchToWeapon(Weapon);
				level.Wep hide();
				wait 50;
				level.Wep Show();
				level notify("destroyred1");
				level.weapons = false;
			}
		}
		wait 0.05;
	}
}


