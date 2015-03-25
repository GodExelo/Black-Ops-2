
GunRandom()
{
	return Level.AssaultRifles[Randomint(Level.AssaultRifles.size)];
	return Level.Pistols[Randomint(Level.Pistols.size)];
	return Level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)];
	return Level.SniperRifles[Randomint(Level.SniperRifles.size)];
	return Level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)];
	return Level.ShotGuns[Randomint(Level.ShotGuns.size)];
	return Level.Perks[Randomint(Level.Perks.size)];
	return Level.Perks[Randomint(Level.Perks.size)];
	return Level.Perks[Randomint(Level.Perks.size)];
}


Waypoints()
{
	if(getDvar("mapname") == "mp_nuketown_2020")
		level thread Nuketown();
	if(getDvar("mapname") == "mp_hijacked")
		level thread Hijacked();
	if(getDvar("mapname") == "mp_express")
		level thread Express();
	if(getDvar("mapname") == "mp_meltdown")
		level thread Meltdown();
	if(getDvar("mapname") == "mp_drone")
		level thread Drone();
	if(getDvar("mapname") == "mp_carrier")
		level thread Carrier();
	if(getDvar("mapname") == "mp_overflow")
		level thread Overflow();
	if(getDvar("mapname") == "mp_slums")
		level thread Slums();
	if(getDvar("mapname") == "mp_turbine")
		level thread Turbine();
	if(getDvar("mapname") == "mp_raid")
		level thread Raid();
	if(getDvar("mapname") == "mp_la")
		level thread Aftermath();
	if(getDvar("mapname") == "mp_dockside")
		level thread Cargo();
	if(getDvar("mapname") == "mp_village")
		level thread Standoff();
	if(getDvar("mapname") == "mp_nightclub")
		level thread Plaza();
	if(getDvar("mapname") == "mp_socotra")
		level thread Yemen();
	if(getDvar("mapname") == "mp_dig")
		level thread Dig();
	if(getDvar("mapname") == "mp_pod")
		level thread Pod();
	if(getDvar("mapname") == "mp_takeoff")
		level thread Takeoff();
	if(getDvar("mapname") == "mp_frostbite")
		level thread Frost();
	if(getDvar("mapname") == "mp_mirage")
		level thread Mirage();
	if(getDvar("mapname") == "mp_hydro")
		level thread Hydro();
	if(getDvar("mapname") == "mp_skate")
		level thread Grind();
	if(getDvar("mapname") == "mp_downhill")
		level thread Downhill();
	if(getDvar("mapname") == "mp_concert")
		level thread Encore();
	if(getDvar("mapname") == "mp_vertigo")
		level thread Vertigo();
	if (getDvar("mapname") == "mp_magma")
		level thread Magma();
	if(getDvar("mapname") == "mp_studio")
		level thread Studio();
	if(getDvar("mapname") == "mp_paintball")
		level thread Rush();
	if(getDvar("mapname") == "mp_castaway")
		level thread Cove();
	if(getDvar("mapname") == "mp_bridge")
		level thread Detour();
	if(getDvar("mapname") == "mp_uplink")
		level thread Uplink();
}

NukeTown()
{
	level.Pos_1 = (-1930,436,-63);
	level.Pos_2 = (-676,381,-56);
	level.Pos_3 = (42,-5,-68);
	level.Pos_4 = (771,265,-56);
	level.Pos_5 = (1907,353,-60);
	level.Pos_6 = (619,496,-57);
	level.Pos_7 = (-619,129,-56);

	
	level.Posx_1 = (-1920,436,-13);
	level.Posx_2 = (-666,381,-6);
	level.Posx_3 = (52,-5,-18);
	level.Posx_4 = (781,265,-6);
	level.Posx_5 = (1917,353,-10);
	level.Posx_6 = (629,496,-7);
	level.Posx_7 = (-609,129,-6);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	
	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Hijacked()
{
	level.Pos_1 = (-3005,183,-171);
	level.Pos_2 = (-584,-2,20);
	level.Pos_3 = (-1445,-124,-43);
	level.Pos_4 = (-415,723,-49);
	level.Pos_5 = (1930,9,12);
	level.Pos_6 = (777,-47,156);
	level.Pos_7 = (-1335,-198,92);

	
	level.Posx_1 = (-2995,183,-121);
	level.Posx_2 = (-574,-2,70);
	level.Posx_3 = (-1435,-124,7);
	level.Posx_4 = (-405,723,1);
	level.Posx_5 = (1940,9,62);
	level.Posx_6 = (787,-47,206);
	level.Posx_7 = (-1345,-198,142);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);

	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);


}




Express()
{
	level.Pos_1 = (-908,-395,-39);
	level.Pos_2 = (-491,884,-39);
	level.Pos_3 = (1128,2363,-49);
	level.Pos_4 = (1713,-2,81);
	level.Pos_5 = (205,1389,128);
	level.Pos_6 = (348,-32,-15);
	level.Pos_7 = (1215,-2440,-50);

	
	level.Posx_1 = (-898,-395,11);
	level.Posx_2 = (-481,884,11);
	level.Posx_3 = (1138,2363,1);
	level.Posx_4 = (1723,-2,131);
	level.Posx_5 = (215,1389,178);
	level.Posx_6 = (358,-32,35);
	level.Posx_7 = (1225,-2440,0);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

MeltDown()
{
	level.Pos_1 = (-241,1700,52);
	level.Pos_2 = (596,420,72);
	level.Pos_3 = (618,-1175,-143);
	level.Pos_4 = (1796,433,-135);
	level.Pos_5 = (988,2742,-71);
	level.Pos_6 = (466,4451,-142);
	level.Pos_7 = (2215,2648,-54);

	
	level.Posx_1 = (-231,1700,102);
	level.Posx_2 = (606,420,122);
	level.Posx_3 = (628,-1175,-93);
	level.Posx_4 = (1806,433,-85);
	level.Posx_5 = (998,2742,-21);
	level.Posx_6 = (476,4451,-92);
	level.Posx_7 = (2225,2648,-4);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Drone()
{
	level.Pos_1 = (-2108,-1458,80);
	level.Pos_2 = (-1209,187,96);
	level.Pos_3 = (-955,1441,135);
	level.Pos_4 = (660,169,7);
	level.Pos_5 = (-211,-1123,242);
	level.Pos_6 = (-1135,-849,265);
	level.Pos_7 = (511,986,264);

	
	level.Posx_1 = (-2098,-1458,130);
	level.Posx_2 = (-1199,187,146);
	level.Posx_3 = (-945,1441,185);
	level.Posx_4 = (670,169,57);
	level.Posx_5 = (-201,-1123,292);
	level.Posx_6 = (-1125,-849,315);
	level.Posx_7 = (521,986,314);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Carrier()
{
	level.Pos_1 = (-5975,992,44);
	level.Pos_2 = (-4445,887,44);
	level.Pos_3 = (-2504,261,44);
	level.Pos_4 = (-4280,-1151,44);
	level.Pos_5 = (-4950,-2035,-75);
	level.Pos_6 = (-6272,-598,44);
	level.Pos_7 = (-5217,59,13);

	
	level.Posx_1 = (-5965,992,94);
	level.Posx_2 = (-4435,887,94);
	level.Posx_3 = (-2494,261,94);
	level.Posx_4 = (-4270,-1151,94);
	level.Posx_5 = (-4940,-2035,-25);
	level.Posx_6 = (-6262,-598,94);
	level.Posx_7 = (-5207,59,63);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}
Overflow()
{
	level.Pos_1 = (-995,61,120);
	level.Pos_2 = (-489,1568,-5);
	level.Pos_3 = (690,540,64);
	level.Pos_4 = (1994,-1107,-7);
	level.Pos_5 = (674,-960,0);
	level.Pos_6 = (-2162,-693,-132);
	level.Pos_7 = (10,1099,0);

	
	level.Posx_1 = (-985,61,170);
	level.Posx_2 = (-479,1568,45);
	level.Posx_3 = (700,540,114);
	level.Posx_4 = (2004,-1107,43);
	level.Posx_5 = (684,-960,50);
	level.Posx_6 = (-2152,-693,-82);
	level.Posx_7 = (20,1099,50);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}


Slums()
{
	level.Pos_1 = (-1099,543,562);
	level.Pos_2 = (-10,1836,576);
	level.Pos_3 = (1280,-725,552);
	level.Pos_4 = (734,-3088,456);
	level.Pos_5 = (-490,-786,552);
	level.Pos_6 = (39,57,552);
	level.Pos_7 = (1029,1028,584);

	
	level.Posx_1 = (-1089,543,612);
	level.Posx_2 = (0,1836,626);
	level.Posx_3 = (1290,-725,602);//
	level.Posx_4 = (744,-3088,506);
	level.Posx_5 = (-480,-786,602);//
	level.Posx_6 = (49,57,602);
	level.Posx_7 = (1039,1028,634);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Turbine()
{
	level.Pos_1 = (-1030,1743,411);
	level.Pos_2 = (1985,2805,162);
	level.Pos_3 = (1610,214,30);
	level.Pos_4 = (-20,-986,177);
	level.Pos_5 = (695,3241,142);
	level.Pos_6 = (579,4705,-257);
	level.Pos_7 = (-984,2666,392);

	
	level.Posx_1 = (-1020,1743,461);
	level.Posx_2 = (1995,2805,212);
	level.Posx_3 = (1620,214,80);
	level.Posx_4 = (-10,-986,227);//
	level.Posx_5 = (705,3241,192);
	level.Posx_6 = (589,4705,-207);//
	level.Posx_7 = (-974,2666,442);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Raid()
{
	level.Pos_1 = (613,4322,-3);
	level.Pos_2 = (4375,3090,32);
	level.Pos_3 = (3173,2176,192);
	level.Pos_4 = (1457,1582,2312);
	level.Pos_5 = (63,3069,112);
	level.Pos_6 = (2218,3462,108);
	level.Pos_7 = (1125,2856,116);

	
	level.Posx_1 = (623,4322,47);
	level.Posx_2 = (4385,3090,82);//
	level.Posx_3 = (3183,2176,242);//
	level.Posx_4 = (1467,1582,2362);
	level.Posx_5 = (73,3069,162);
	level.Posx_6 = (2228,3462,158);
	level.Posx_7 = (1135,2856,166);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

AfterMath()
{
	level.Pos_1 = (-1564,3916,-132);
	level.Pos_2 = (-804,2312,-195);
	level.Pos_3 = (-76,643,-206);
	level.Pos_4 = (-2467,939,-206);
	level.Pos_5 = (-2387,2670,-199);
	level.Pos_6 = (-2451,4909,-206);
	level.Pos_7 = (469,2254,-278);

	
	level.Posx_1 = (-1554,3916,-82);
	level.Posx_2 = (-794,2312,-145);//
	level.Posx_3 = (-66,643,-156);
	level.Posx_4 = (-2457,939,-156);
	level.Posx_5 = (-2377,2670,-149);
	level.Posx_6 = (-2441,4909,-156);
	level.Posx_7 = (479,2254,-228);

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}
Cargo()
{
	level.Pos_1 = (-899,3588,-67);
	level.Pos_2 = (957,2657,-67);
	level.Pos_3 = (-58,1428,-100);
	level.Pos_4 = (-429,-1003,-67);
	level.Pos_5 = (634,466,-67);
	level.Pos_6 = (-1405,1167,-67);
	level.Pos_7 = (-489,2426,68);

	
	level.Posx_1 = (-889,3588,-17);//
	level.Posx_2 = (967,2657,-17);//
	level.Posx_3 = (-48,1428,-50);//
	level.Posx_4 = (-419,-1003,-17);//
	level.Posx_5 = (644,466,-17);//
	level.Posx_6 = (-1395,1167,-17);//
	level.Posx_7 = (-479,2426,118);//

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Standoff()
{
	level.Pos_1 = (-1728,-691,7);
	level.Pos_2 = (-171,-329,8);
	level.Pos_3 = (665,462,8);
	level.Pos_4 = (1261,-663,8);
	level.Pos_5 = (-3,-1405,-23);
	level.Pos_6 = (-629,1401,8);
	level.Pos_7 = (1088,675,144);

	
	level.Posx_1 = (-1718,-691,57);//
	level.Posx_2 = (-161,-329,58);//
	level.Posx_3 = (675,462,58);//
	level.Posx_4 = (1271,-663,58);//
	level.Posx_5 = (7,-1405,27);//
	level.Posx_6 = (-619,1401,58);//
	level.Posx_7 = (1098,675,194);//

	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Plaza()
{
	level.Pos_1 = (-18635,123,-191);
	level.Pos_2 = (-17566,2322,-87);
	level.Pos_3 = (-16428,3279,-63);
	level.Pos_4 = (-16290,1619,-85);
	level.Pos_5 = (-17482,411,-139);
	level.Pos_6 = (-18386,823,-63);
	level.Pos_7 = (-18433,2487,-143);

	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	
	level.Posx_1 = (-18625,123,-141);//
	level.Posx_2 = (-17556,2322,-37);//
	level.Posx_3 = (-16418,3279,-13);//
	level.Posx_4 = (-16280,1619,-35);//
	level.Posx_5 = (-17472,411,-89);//
	level.Posx_6 = (-18376,823,-13);//
	level.Posx_7 = (-18423,2487,-93);//

	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Yemen()
{
	level.Pos_1 = (-1264,-525,204);
	level.Pos_2 = (439,779,88);
	level.Pos_3 = (586,1904,279);
	level.Pos_4 = (2100,555,204);
	level.Pos_5 = (1318,-1067,104);
	level.Pos_6 = (60,-1176,264);
	level.Pos_7 = (1044,693,283);

	
	level.Posx_1 = (-1254,-525,254);//
	level.Posx_2 = (449,779,138);//
	level.Posx_3 = (596,1904,329);//
	level.Posx_4 = (2110,555,254);//
	level.Posx_5 = (1328,-1067,154);//
	level.Posx_6 = (70,-1176,314);//
	level.Posx_7 = (1054,693,333);//

	
	level thread SpawnWeapon1(Level.AssaultRifles[Randomint(Level.AssaultRifles.size)], level.Posx_1, level.Pos1);
	level thread SpawnWeapon2(Level.Pistols[Randomint(Level.Pistols.size)], level.Posx_2, level.Pos2);
	level thread SpawnWeapon3(level.SubMachineGuns[Randomint(Level.SubMachineGuns.size)], level.Posx_3, level.Pos3);
	level thread SpawnWeapon4(Level.SniperRifles[Randomint(Level.SniperRifles.size)], level.Posx_4, level.Pos4);
	level thread SpawnWeapon5(level.LightMachineGuns[Randomint(Level.LightMachineGuns.size)], level.Posx_5, Pos5);
	level thread SpawnWeapon6(Level.ShotGuns[Randomint(Level.ShotGuns.size)], level.Posx_6, level.Pos6);
	level thread SpawnWeapon7("minigun_mp", level.Posx_7, level.Pos7);
	
	Pos1 = spawnFx(level.waypointGreen, level.Pos_1,(0, 0, 1), (1, 0, 0));
	Pos2 = spawnFx(level.waypointGreen, level.Pos_2,(0, 0, 1), (1, 0, 0));
	Pos3 = spawnFx(level.waypointGreen, level.Pos_3,(0, 0, 1), (1, 0, 0));
	Pos4 = spawnFx(level.waypointGreen, level.Pos_4,(0, 0, 1), (1, 0, 0));
	Pos5 = spawnFx(level.waypointGreen, level.Pos_5,(0, 0, 1), (1, 0, 0));
	Pos6 = spawnFx(level.waypointGreen, level.Pos_6,(0, 0, 1), (1, 0, 0));
	Pos7 = spawnFx(level.waypointGreen, level.Pos_7,(0, 0, 1), (1, 0, 0));

	triggerFx(Pos1);
	triggerFx(Pos2);
	triggerFx(Pos3);
	triggerFx(Pos4);
	triggerFx(Pos5);
	triggerFx(Pos6);
	triggerFx(Pos7);

}

Dig()
{ }

Pod()
{ }

Takeoff()
{ }

Frost()
{ }

Mirage()
{ }

Hydro()
{ }

Grind()
{ }

Downhill()
{ }

Encore()
{ }

Vertigo()
{ }

Magma()
{ }

Studio()
{ }

Rush()
{ }

Cove()
{ }

Detour()
{ }

Uplink()
{ }













