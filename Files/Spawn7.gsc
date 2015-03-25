SpawnWeapon7(Weapon7, Location7, PosInit)
{

	weapon7_model = getWeaponModel(Weapon7);
	if(weapon7_model=="")weapon7_model=Weapon7;
	level.Wep7=spawn("script_model",Location7+(0,0,0));
	level.Wep7 setModel(weapon7_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup7(Weapon7, Location7);
	}
}

SpawnWeap7Red()
{
	level waittill("Red7");
	Pos7 delete();
	wait 1;
	Pos7 = spawnFx(level.waypointRed, level.Pos_7, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos7);
	level waittill("destroyred7");
	Pos7 delete();
}

monitorPickup7(Weapon7, Location7)
{
	for(;;)
	{
		Radius7 = distance(Location7, self.origin);
		if(Radius7<100)
		{
			self waittill("pressed_square");
			if(level.weapons7 == false)
			{
				level.weapons7 = true;
				level thread SpawnWeap7Red();
				wait 0.5;
				level notify("Red7");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon7);
				self switchToWeapon(Weapon7);
				level.Wep7 hide();
				wait 50;
				level.Wep7 Show();
				level notify("destroyred7");
				level.weapons7 = false;
			}
		}
		wait 0.05;
	}
}


