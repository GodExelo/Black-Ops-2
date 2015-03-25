SpawnWeapon3(Weapon3, Location3, PosInit)
{

	weapon3_model = getWeaponModel(Weapon3);
	if(weapon3_model=="")weapon3_model=Weapon3;
	level.Wep3=spawn("script_model",Location3+(0,0,0));
	level.Wep3 setModel(weapon3_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup3(Weapon3, Location3);
	}
}

SpawnWeap3Red()
{
	level waittill("Red3");
	Pos3 delete();
	wait 1;
	Pos3 = spawnFx(level.waypointRed, level.Pos_3, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos3);
	level waittill("destroyred3");
	Pos3 delete();
}

monitorPickup3(Weapon3, Location3)
{
	for(;;)
	{
		Radius3 = distance(Location3, self.origin);
		if(Radius3<100)
		{
			self waittill("pressed_square");
			if(level.weapons3 == false)
			{
				level.weapons3 = true;
				level thread SpawnWeap3Red();
				wait 0.5;
				level notify("Red3");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon3);
				self switchToWeapon(Weapon3);
				level.Wep3 hide();
				wait 50;
				level.Wep3 Show();
				level notify("destroyred3");
				level.weapons3 = false;
			}
		}
		wait 0.05;
	}
}


