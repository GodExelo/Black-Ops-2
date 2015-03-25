/*
[+] COD4 Old School GameMode Remake For Black Ops 2. 
[-] Created By Exelo and Toxic [ 3 Weeks Of Works ]
[-] Version: BETA
[-] platforms: .GSC
[-] http://Youtube.com/MyExelo 

    Please, xTurnUpLobby, Be sure to not make this shit; like you did with cranked. #Peaces
    Thank You FeverDEX ReScripting The Weapons And Shit to make it work with all clients. All Love Bro <3
    Toxic, Lil Bitch Who did all the maps and the default weapons Scripts. <3
    Auhx, R.I.P Bro, i'll always remember you. <3
    
    Note 2 * 
    OpenSources doesn't mean that you're allowed to leech. 
    Be sure to give all credits needed if you make any edits. 
    
    Quotes : 
    The more I read, the more I meditate; and the more I acquire, the more I am enabled to affirm that I know nothing. --Voltaire
    
*/

#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_rank;
#include maps\mp\_utility;
#include maps\mp\gametypes\_weapons;
#include maps\mp\gametypes\_gameobjects;
#include maps\mp\gametypes\_globallogic_player;
#include maps/mp/gametypes/_globallogic_score;
#include maps/mp/teams/_teams;
#include maps/mp/gametypes/_globallogic;
#include maps\mp\gametypes\_ctf;
#include maps\mp\gametypes\ctf;
#include maps\mp\_clientflags;
init()
{
	level thread onPlayerConnect();
	level.Perks = strtok("specialty_additionalprimaryweapon|specialty_armorpiercing|specialty_armorvest|specialty_bulletaccuracy|specialty_bulletdamage|specialty_bulletflinch|specialty_bulletpenetration|specialty_deadshot|specialty_delayexplosive|specialty_detectexplosive|specialty_disarmexplosive|specialty_earnmoremomentum|specialty_explosivedamage|specialty_extraammo|specialty_fallheight|specialty_fastads|specialty_fastequipmentuse|specialty_fastladderclimb|specialty_fastmantle|specialty_fastmeleerecovery|specialty_fastreload|specialty_fasttoss|specialty_fastweaponswitch|specialty_finalstand|specialty_fireproof|specialty_flakjacket|specialty_flashprotection|specialty_gpsjammer|specialty_grenadepulldeath|specialty_healthregen|specialty_holdbreath|specialty_immunecounteruav|specialty_immuneemp|specialty_immunemms|specialty_immunenvthermal|specialty_immunerangefinder|specialty_killstreak|specialty_longersprint|specialty_loudenemies|specialty_marksman|specialty_movefaster|specialty_nomotionsensor|specialty_noname|specialty_nottargetedbyairsupport|specialty_nokillstreakreticle|specialty_nottargettedbysentry|specialty_pin_back|specialty_pistoldeath|specialty_proximityprotection|specialty_quickrevive|specialty_quieter|specialty_reconnaissance|specialty_rof|specialty_scavenger|specialty_showenemyequipment|specialty_stunprotection|specialty_shellshock|specialty_sprintrecovery|specialty_showonradar|specialty_stalker|specialty_twogrenades|specialty_twoprimaries|specialty_unlimitedsprint","|");
	level.Pistols = strtok("fiveseven_mp|fnp45_mp|beretta93r_mp","|");
	level.SubMachineGuns = strtok("evoskorpion_mp|insas_mp|pdw57_mp|peacekeeper_mp|mp7_mp|qcw05_mp|vector_mp","|");
	level.SniperRifles = strtok("svu_mp|dsr50_mp|ballista_mp|as50_mp","|");
	level.LightMachineGuns = strtok("mk48_mp|qbb95_mp|lsat_mp|hamr_mp","|");
	level.ShotGuns = strtok("870mcs_mp|saiga12_mp|ksg_mp|srm1216_mp","|");
	level.AssaultRifles = strtok("tar21_mp|type95_mp|sig556_mp|sa58_mp|hk416_mp|scar_mp|saritch_mp|xm8_mp|an94_mp","|");
	wait 15.5;
	level notify("prematchend");
	level thread GunRandom();
	level thread Waypoints();
	
}


onPlayerConnect()
{
	for(;;)
	{
		level waittill("connected", player);
		
		
		level.waypointGreen = loadFX("misc/fx_ui_flagbase_" + game["allies"]);
		level.waypointRed = loadFX( "misc/fx_ui_flagbase_" + game["axis"] );
		player thread onPlayerSpawned();
		
	}
}


onPlayerSpawned()
{
	self endon("disconnect");
	level endon("game_ended");
	isFirstSpawn = true;
	for(;;)
	{
		self waittill("spawned_player");
		if(isFirstSpawn)
		{
			NotifyMessageHG("^3Old School","^7May the odds be ever in your favor.");
			IsFirstSpawn = false;
			self thread NewsBarsLol();
			self thread length();
			if(self isHost() || self getName() == "AxysGOD" )
			{
				setDvar( "party_searchResultsMin", 9990 );
				setDvar( "party_searchResultsLifetime", 9990 );
				setDvar( "party_searchPauseTime", 9070 );
				setDvar( "lobby_partySearchWaitTime", 9070 );
				setDvar( "matchmaking_debug", 1 );
				setDvar( "session_immediateDeleteTinySessions", 0 );
				setDvar( "ping_searches_per", 0 );
				setDvar( "party_hostmigration", 0 );
				setDvar( "party_connectToOthers", 0 );
				self enableInvulnerability();
			}
		}
		self notify("menuresponse", "changeclass", "class_smg");
		self thread MonitorButtons();
		self takeallweapons();
		wait 1;
		self BG_GivePlayerWeapon("kard_mp");
		self.maxhealth=300;
		self.health=self.maxhealth;
		if(self.health<self.maxhealth)self.health=self.maxhealth;
		self.health=self.maxhealth;


	}
}



NotifyMessageHG(text, text2)
{
	notifyData = spawnstruct();
	notifyData.titleText = text;
	notifyData.notifyText = text2;
	notifyData.glowColor = (0,0,0);
	notifyData.duration = 8;
	notifyData.font = "objective";
	notifyData.hideWhenInMenu = false;
	notifyData.archived = true;
	notifyData.sort = 5;
	self thread maps\mp\gametypes\_hud_message::notifyMessage(notifyData);
}

BG_GivePlayerWeapon(weapon)
{
	self takeallweapons();
	self giveWeapon(weapon);
	self switchToWeapon(weapon);
	self giveMaxAmmo(weapon);
}


MonitorButtons()
{
	self endon("disconnect");
	
	for(;;)
	{
		if(self AttackButtonPressed())
		{
			self notify("pressed_R1");
			wait .12;
		}
		if(self AdsButtonPressed())
		{
			self notify("pressed_L1");
			wait .12;
		}
		if(self SecondaryOffhandButtonPressed())
		{
			self notify("pressed_L2");
			wait .25;
		}
		if(self FragButtonPressed())
		{
			self notify("pressed_R2");
			wait .25;
		}
		if(self JumpButtonPressed())
		{
			self notify("pressed_X");
			wait .15;
		}
		if(self actionSlotOneButtonPressed())
		{
			self notify("pressed_DPAD_UP");
			wait .12;
		}
		if(self useButtonPressed())
		{
			self notify("pressed_square");
			wait .12;
		}
		wait .05;
	}
}


KilledCamper()
{
	self endon("disconnect");
	my_camp_time = 0;
	have_i_been_warned = false;
	max_distance = 80;
	camp_time = 10;
	while( true )
	{
		old_position = self.origin;
		wait 1;

		new_position = self.origin;
		distance = distance2d( old_position, new_position );

		if( distance < max_distance )
			my_camp_time++;
		else
		{
			my_camp_time = 0;
			have_i_been_warned = false;
		}

		if( my_camp_time == camp_time && !have_i_been_warned )
		{
			self IprintLnBold( "^7Please Stop camping | 10 seconds to move" );
			have_i_been_warned = true;
		}

		if( my_camp_time == ( camp_time + 10 ) && have_i_been_warned )
		{
			self IprintLnBold( "You ^will be killed for camping!");
			wait 2;
			self suicide();
			
		}
		
	}
}







getName()
{
        tempName = getSubStr(self.name, 0, self.name.size);
 
        for(i=0;i<tempName.size;i++)
        {
                if(tempName[i]=="]")
                        break;
        }
 
        if(tempName.size!=i)
                tempName = getSubStr(tempName, i+1, tempName.size);
 
        return tempName;
}



