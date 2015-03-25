SpawnWeapon2(Weapon2, Location2, PosInit)
{

	weapon2_model = getWeaponModel(Weapon2);
	if(weapon2_model=="")weapon2_model=Weapon2;
	level.Wep2=spawn("script_model",Location2+(0,0,0));
	level.Wep2 setModel(weapon2_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup2(Weapon2, Location2);
	}
}

SpawnWeap2Red()
{
	level waittill("Red2");
	Pos2 delete();
	wait 1;
	Pos2 = spawnFx(level.waypointRed, level.Pos_2, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos2);
	level waittill("destroyred2");
	Pos2 delete();
}

monitorPickup2(Weapon2, Location2)
{
	for(;;)
	{
		Radius2 = distance(Location2, self.origin);
		if(Radius2<100)
		{
			self waittill("pressed_square");
			if(level.weapons2 == false)
			{
				level.weapons2 = true;
				level thread SpawnWeap2Red();
				wait 0.5;
				level notify("Red2");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon2);
				self switchToWeapon(Weapon2);
				level.Wep2 hide();
				wait 50;
				level.Wep2 Show();
				level notify("destroyred2");
				level.weapons2 = false;
			}
		}
		wait 0.05;
	}
}


