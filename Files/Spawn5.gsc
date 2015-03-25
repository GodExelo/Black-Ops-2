SpawnWeapon5(Weapon5, Location5, PosInit)
{

	weapon5_model = getWeaponModel(Weapon5);
	if(weapon5_model=="")weapon5_model=Weapon5;
	level.Wep5=spawn("script_model",Location5+(0,0,0));
	level.Wep5 setModel(weapon5_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup5(Weapon5, Location5);
	}
}

SpawnWeap5Red()
{
	level waittill("Red5");
	Pos5 delete();
	wait 1;
	Pos5 = spawnFx(level.waypointRed, level.Pos_5, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos5);
	level waittill("destroyred5");
	Pos5 delete();
}

monitorPickup5(Weapon5, Location5)
{
	for(;;)
	{
		Radius5 = distance(Location5, self.origin);
		if(Radius5<100)
		{
			self waittill("pressed_square");
			if(level.weapons5 == false)
			{
				level.weapons5 = true;
				level thread SpawnWeap5Red();
				wait 0.5;
				level notify("Red5");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon5);
				self switchToWeapon(Weapon5);
				level.Wep5 hide();
				wait 50;
				level.Wep5 Show();
				level notify("destroyred5");
				level.weapons5 = false;
			}
		}
		wait 0.05;
	}
}


