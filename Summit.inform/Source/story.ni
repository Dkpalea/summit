"Summit" by Dustin Palea

The display banner rule is listed before the when play begins stage rule in the startup rules.

[When play begins:
	say "Energy: [the energy of the player]%  Health: [the health of the player]%".]
	
[----- state -----]
The energyDeclineOfTurn is initially 0.
The healthDeclineOfTurn is initially 0.
The goingByNameWasCanceledDuringTurn is initially false.
The additionalChanceOfSurvivingObstacle is initially 0.

[----- object types -----]

[thing]
A thing has a number called load.

[room]
A room has a number called energyDecline.
A room has a number called healthDeclineWithNoEnergy.

[person]
A person has a number called max health.
A person has a number called health.
The max health is always 100.
The health of the player is 100.

A person has a number called max energy.
A person has a number called energy.
The max energy is always 100.
The energy of the player is 100.

A person has a number called max load.
A person has a number called load.
The max load of the player is 100.
The load of the player is 0.

[The description of the player is "Energy: [the energy of the player]%  Health: [the health of the player]%".]
[ignition]
[Ignition is a kind of value.
The ignitions are on, off.
A thing has an ignition.]

[matchbox]
[A matchbox is a kind of container.
A matchbox is always openable.
A matchbox is usually closed.
Understand "matchbox" as the matchbox.]

[match]
[A match is a thing.
The plural of match is matches.]

[campfire]
[Campfire is a thing.
Soil is scenery in the Basecamp.
Instead of pushing, pulling, turning, tasting, or touching your campfire, say "You would burn yourself."
Understand "fire" as your campfire.
The description of your campfire is "A reassuring protection against the cold."]

[food]
Food is a kind of thing.
Food is usually edible.
Food has a number called the replenishment energy.
The replenishment energy of a food is usually 20.
The description of food is usually "[The noun] can replenish [the replenishment energy of the noun]% of your energy.".

[orange]
An orange is a kind of food.
The load of an orange is 3.
The replenishment energy of an orange is 6.

[cliff bar]
A cliff bar is a kind of food.
The load of a cliff bar is 2.
The replenishment energy of a cliff bar is 15.

[a small pack of jerky]
A small pack of jerky is a kind of food.
The load of a small pack of jerky is 10.
The replenishment energy of a small pack of jerky is 25.

[water bottle]
A water bottle is a thing.
The load of a water bottle is 15.
A water bottle has a number called remaining sips.
The remaining sips of a water bottle is usually 7.
A water bottle has a number called replenishment energy.
The replenishment energy of a water bottle is 10.
Understand "water" as the water bottle.
The description of a water bottle is "Carrying this insulated bottle requires [the load of the water bottle]% of your load. Each sip replenishes [the replenishment energy of the water bottle]% of your energy and there are [the remaining sips of the water bottle] sips remaining.".

[ice axe]
An ice axe is a thing.
The load of an ice axe is 15.
Understand "axe" as the ice axe.

[tent]
A tent is an enterable container.
The load of a tent is 30.
A tent has a number called the replenishment energy.
The replenishment energy of a tent is usually 20.

[chest with lid (from http://inform7.com/book/RB_8_4.html)]
A chest is a kind of container.
A chest is always openable.
A chest is usually closed.
A chest is usually fixed in place.
Understand "chest" as the chest.
The specification of a chest is "Represents a container with a separately implemented lid; the lid is itself a supporter."
A lid is a kind of supporter.
A lid is part of every chest.
The specification of a lid is "A supporter attached to a chest, which can only support things when the chest is closed."
Before opening a lid which is part of a chest (called the item):
    try opening the item instead.
Before closing a lid which is part of a chest (called the item):
    try closing the item instead.
Before opening a chest (called the box) when something is on a lid (called the obstruction) which is part of the box:
	repeat with item running through things on the obstruction:
		say "(first removing [the item])";
		try taking the item.
Instead of opening a chest when something is on a lid (called the item) which is part of the noun:
    say "You'd have to remove [the list of things on the item] from the lid first." instead.
Instead of looking under a lid which is part of a chest (called the item):
    try opening the item.
Before inserting something into a lid which is part of a chest (called the item):
    try inserting the noun into the item instead.
Before putting something on a chest when a lid (called the item) is part of the second noun:
    try putting the noun on the item instead.
Before putting something on a lid which is part of an open chest (called the item):
    say "(first closing [the item])";
    try closing the item.
Instead of putting something on a lid which is part of an open chest (called the item):
    say "[The item] would need to be closed first."
Instead of examining a closed chest when something is on a lid (called the top) which is part of the noun:
    say "[The noun] is closed, and there [is-are a list of things on the top] on top."
After printing the name of a chest (called the item) while listing contents of a room:
	if a lid (called the second item) which supports something is part of the item:
		say " (on which [is-are a list of things on the second item])";
		omit contents in listing.


[----- object instances -----]

[basecamp chest]
There is a chest called 'Basecamp Chest'.
'Basecamp Chest' is in Basecamp.
'Basecamp Chest' contains a tent, an orange, a water bottle, and an ice axe.


[----- actions -----]

[diagnosing]
Diagnosing is an action applying to one visible thing.
Understand "diagnose [something]" as diagnosing.
Check diagnosing:
	if the noun is not a person, say "Only people can be diagnosed." instead.
Carry out diagnosing:
	say "YourA health is at [health]%."
	
[drinking/sipping]
[Carry out drink/sip water bottle:
	energize the player by the replenishment energy of the noun.
After entering a tent:
	say "Aaahhhh! Refreshing.";]

[entering]
Carry out entering a tent:
	energize the player by the replenishment energy of the noun.
After entering a tent:
	say "You enter the tent. It's nice and cozy inside.";

[healing]
To heal (person - a person) by (number - a number):
	if the health of the person plus the number is greater than 100:
		now the energy of the person is 100;
	else:
		increase the health of the person by the number.

[hurting]
To hurt (person - a person) by (number - a number):
	if the health of the person minus the number is less than 0:
		now the health of the person is 0;
	else:
		decrease the health of the person by the number.

[energizing]
To energize (person - a person) by (number - a number):
	if the energy of the person plus the number is greater than 100:
		now the energy of the person is 100;
	else:
		increase the energy of the person by the number.
		
[tiring]
To tire (person - a person) by (number - a number):
	if the energy of the person minus the number is less than 0:
		now the energy of the person is 0;
	else:
		decrease the energy of the person by the number.
		
[send]
To send (person - a person) to (place - a room):
	[basecamp -> Camp1]
	if the player is in Basecamp and the place is Camp1:
		if the player is carrying food and the player is carrying a a water bottle and the player is carrying a tent and the player is carrying a ice axe:
			say "Are you sure you want to go to [the place]? This hike will require 20 energy.";
			if the player consents:
				say "You make the trek to [the place].";
				tire the player by 20;
				move the player to the place;
			else:
				do nothing instead;
		else:
			say "You should at least bring food, water, shelter, and an ice axe.";
	[basecamp <- Camp1]
	else if the player is in Camp1 and the place is Basecamp:
		say "Are you sure you want to go to [the place]? This hike will require 15 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			tire the player by 15;
			move the player to the place;
		else:
			do nothing instead;
	[Camp1 -> Camp2]
	else if the player is in Camp1 and the place is Camp2:
		say "Are you sure you want to go to [the place]? A glacier is blocking the path and there's no way around it... climbing it is risky and will require 30 energy.";
		if the player consents:
			say "You make the climb to [the place].";
			[if the player is carrying xyz it helps... additionalChanceOfSurvivingObstacle]
			if a random chance of 3 in 3 succeeds:
				say "You climb, climb, and climb. Your limbs want to give up - but you won't let them. Aside from a few near death experiences, you finally make it to the top!";
				tire the player by 30;
				move the player to the place;
			else:
				say "You climb, climb, and climb. Your limbs want to give up – but you won't let them. However, the ice will! You slip and take a HARD fall.";
				tire the player by 30;
				hurt the player by 40;
		else:
			do nothing instead;
	[Camp1 <- Camp2]
	else if the player is in Camp2 and the place is Camp1:
		say "Are you sure you want to go to [the place]? This hike will require 25 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			move the player to the place;
		else:
			do nothing instead;
	[Camp2 -> Camp3]
	else if the player is in Camp2 and the place is Camp3:
		say "Are you sure you want to go to [the place]? This hike will require 30 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			move the player to the place;
		else:
			do nothing instead;
	[Camp2 <- Camp3]
	else if the player is in Camp3 and the place is Camp2:
		say "Are you sure you want to go to [the place]? This hike will require 25 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			move the player to the place;
		else:
			do nothing instead;
	[Camp3 -> Summit]
	else if the player is in Camp3 and the place is Summit:
		say "Are you sure you want to go to [the place]? This hike will require 40 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			move the player to the place;
		else:
			do nothing instead;
	
[going by name]
[NOTE: without 'going by name', player can only use cardinal directions]
Going by name is an action applying to one thing.
Understand "go to [any adjacent room]" as going by name.
Carry out going by name:
	send the player to the noun.
	
Instead of going:
	[basecamp -> Camp1]
	if the player is in Basecamp and the noun is North:
		send the player to Camp1;
	[basecamp <- Camp1]
	else if the player is in Camp1 and the noun is South:
		send the player to Basecamp;
	[Camp1 -> Camp2]
	else if the player is in Camp1 and the noun is North:
		send the player to Camp2;
	[Camp1 <- Camp2]
	else if the player is in Camp2 and the noun is South:
		send the player to Camp1;
	[Camp2 -> Camp3]
	else if the player is in Camp2 and the noun is North:
		send the player to Camp3;
	[Camp2 <- Camp3]
	else if the player is in Camp3 and the noun is South:
		send the player to Camp2;
	[Camp3 -> Summit]
	else if the player is in Camp3 and the noun is North:
		send the player to Summit;
	else:
		say "There's no time for wandering around. We have a mountain to tackle - from South to North and then North to South.".
			
[eating (from http://inform7.com/book/RB_9_1.html)]
Check eating something:
	if the noun is not food:
		say "[The noun] might be edible, but it's not what you'd consider really food." instead;
	otherwise if the energy of the player is 100:
		say "You're not hungry right now." instead.
Carry out eating something:
	energize the player by the replenishment energy of the noun.
After eating something:
	say "Your energy has increased to [energy of the player]%.".

[----- events -----]
Every turn:
	if the goingByNameWasCanceledDuringTurn is true:
		now goingByNameWasCanceledDuringTurn is false;
	else:
		now energyDeclineOfTurn is 0;
		now healthDeclineOfTurn is 0;
		[basecamp]
		if the player is in Basecamp:
			increase energyDeclineOfTurn by the energyDecline of Basecamp;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Basecamp;
		[Camp1]
		if the player is in Camp1:
			increase energyDeclineOfTurn by the energyDecline of Camp1;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Camp1;
		[Camp2]
		if the player is in Camp2:
			increase energyDeclineOfTurn by the energyDecline of Camp2;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Camp2;
		[Camp3]
		if the player is in Camp3:
			increase energyDeclineOfTurn by the energyDecline of Camp3;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Camp3;
		[Summit]
		if the player is in Summit:
			increase energyDeclineOfTurn by the energyDecline of Summit;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Summit;
		[no negative energy]
		tire the player by energyDeclineOfTurn;
		if the energy of the player is 0:
			[end condition]
			hurt the player by healthDeclineOfTurn;
			if the health of the player is less than 1:
				end the story saying "You have died :(";
		say "Load: [the load of the player]%  Energy: [the energy of the player]%  Health: [the health of the player]%".


[----- locations -----]

Basecamp is a room.
The energyDecline of Basecamp is 1.
The healthDeclineWithNoEnergy of Basecamp is 11.
The description of Basecamp is "Plaza Argentina Base Camp (4200m) for Mt. Aconcagua. The trail up to the summit begins here. It's a dangerous, but non-technical climb. There is a collection of ragtag temporary structures that form the Guardia’s seasonal presence at the less popular Polish Route base camp. Brightly colored tents dot the plateau. The Polish Glacier looms in the distance, and a swift stream - the headwaters of the Vacas river flow from its base. There is an outhouse on the edge of camp. The weekly helicopter retrieval of the 50 gallon drum of waste is a highlight and one of the only things that marks civilized time.

--- Here, each action requires [the energyDecline of Basecamp] energy point. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Basecamp] points per action. ---".
South of Basecamp is nowhere.

Camp1 is a room.
The energyDecline of Camp1 is 2.
The healthDeclineWithNoEnergy of Camp1 is 12.
Camp1 can be seen from Basecamp.
The description of Camp1 is "Camp 1 (4900m)  At 16,076 feet above sea level, Camp 1 is higher than most people have every climbed. It is higher than any peak in North America. It is just 1000 feet lower than Everest Base Camp in Nepal. Camp 1 is located at the top of the trail on a plateau. Aconcagua is not visible from here, but its sister, Mt. Ameguino’s snowy peak looms above you. The camp is located several hundred meters from the glacial stream. There is no outhouse (you must bury your waste, away from any area that could contaminate the stream). Carrying water from the stream to boil for hydration and cooking is required. You can only carry part of what you need to Camp 1 on your first trip, so you must plan carefully. Climbers stay one night in Camp 1, then return to Base Camp for more supplies. You have to bring the bare essentials - tent, sleeping bag, camp stove, food. You don’t immediately need ice climbing equipment - mountaineering boots, crampons, ice ax, harness, helmet, rope. But you will eventually need to bring up to Camp 1, as it’s needed at higher elevations. 

--- Here, each action requires [the energyDecline of Camp1] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Camp1] points per action. ---".
Camp1 is north of Basecamp.

[glacier obstacle]

Camp2 is a room.
The energyDecline of Camp2 is 5.
The healthDeclineWithNoEnergy of Camp2 is 15.
The description of Camp2 is "Camp 2 (5850m) Camp 2 is located at the base of visible portions of the Polish Glacier. Below, it retreats under the moraine, but above you, it appears as a both a wall and a river of blue-green ice and white pillars. These are Los Penitentes, statues in ice guarding the glacier. From here, you can see all the way to the Valle de Vacas. Just like with portages from Plaza Argentina to Camp 1, you must make several trips over 3 days from Camp 1 to Camp 2 to haul the rest of your gear. You leave almost nothing behind at Camp 1, except for an emergency shelter tent and some provisions. You have the option of stashing extra water and saving some of your favorite food for the descent. 

--- Here, each action requires [the energyDecline of Camp2] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Camp2] points per action. ---".
Camp2 is north of Camp1.

Camp3 is a room.
The energyDecline of Camp3 is 10.
The healthDeclineWithNoEnergy of Camp3 is 20.
The description of Camp3 is "Camp 3 (400m elevation gain). No one stays in Camp 3 for long. It is above the 'kill zone' where lack of oxygen and hypoxia can cause rapid deterioration in your mental and physical state. If you decide to use Camp 3, it’s only for a quick stop over so you can be up well before sunrise to attempt the summit. You take only the bare essentials: shelter, food, safety equipment, and your climbing gear. You leave your tent and sleeping bag behind, but you won’t be staying at Camp 3 after the summit. You will stop to retrieve your equipment, if you survive the summit, but that’s it. If you choose to summit from Camp 3, you will have less climbing to do, but you will also be weaker from the extra time at altitude. 

--- Here, each action requires [the energyDecline of Camp3] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Camp3] points per action. ---".
Camp3 is north of Camp2.

Summit is a room.
The energyDecline of Summit is 10.
The healthDeclineWithNoEnergy of Summit is 20.
The description of Summit is "Summit (6962m). The summit of Aconcagua is unremarkable in some ways. It’s a rocky outcropping with various markers, cairns and flags placed there by other climbers. You pause, but not for too long, for photographs and to congratulate members of your team for the accomplishment. You know that you are on the highest peak anywhere except for the Himalayas. Now, you must descend before the weather turns or you lose your mind from lack of oxygen. 

--- Here, each action requires [the energyDecline of Summit] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Summit] points per action. ---".
Summit is north of Camp3.
North of Summit is nowhere.

