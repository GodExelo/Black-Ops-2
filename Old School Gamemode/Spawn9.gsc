SpawnWeapon9(Weapon9, Location9, PosInit)
{

	weapon9_model = getWeaponModel(Weapon9);
	if(weapon9_model=="")weapon9_model=Weapon9;
	level.Wep9=spawn("script_model",Locatio9+(0,0,0));
	level.Wep9 setModel(weapon9_model);
	for(i=0;i<18;i++)
	{
		level.players[i] thread monitorPickup9(Weapon9, Location9);
	}
}

SpawnWeap9Red()
{
	level waittill("Red9");
	Pos9 delete();
	wait 1;
	Pos9 = spawnFx(level.waypointRed, level.Pos_9, (0, 0, 1), (1, 0, 0));
	wait 1;
	triggerFx(Pos9);
	level waittill("destroyred9");
	Pos9 delete();
}

monitorPickup9(Weapon9, Location9)
{
	for(;;)
	{
		Radius9 = distance(Location9, self.origin);
		if(Radius9<=100)
		{
			self waittill("pressed_square");
			if(level.weapons9 == false)
			{
				level.weapons9 = true;
				level thread SpawnWeap9Red();
				wait 0.5;
				level notify("Red9");
				self takeWeapon(self getCurrentWeapon());
				self giveWeapon(Weapon9);
				self switchToWeapon(Weapon9);
				level.Wep9 hide();
				wait 50;
				level.Wep9 Show();
				level notify("destroyred9");
				level.weapons9 = false;
			}
		}
		wait 0.05;
	}
}


