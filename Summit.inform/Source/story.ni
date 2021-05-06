"Summit" by Dustin Palea

The display banner rule is listed before the when play begins stage rule in the startup rules.

When play begins:
	say "hi";


[----- object types -----]

[person]
A person has a number called max health.
A person has a number called health.
The max health is always 100.
The health of the player is 100.

A person has a number called max energy.
A person has a number called energy.
The max energy is always 100.
The energy of the player is 80.

A person has a number called the balance.
The balance of the player is 5000.

The description of the player is "Health: [the health of the player]%. Energy: [the energy of the player]%.".

[chest with lid (from http://inform7.com/book/RB_8_4.html)]
A chest is a kind of container.
A chest is always openable.
A chest is usually fixed in place.
A chest is usually closed.
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
		
[food]
Food is a kind of thing.
Food is usually edible.
Food has a number called the replenishment energy.
The replenishment energy of a food is usually 20.
The description of food is usually "[The noun] can replenish [the replenishment energy of the noun]% of your energy.".		

[----- objects -----]
There is a chest called Chest1.
Chest1 is in Basecamp.

There is an orange.
An orange is a food.
The replenishment energy of the orange is 25.
The orange is in Chest1.


[----- actions -----]

[diagnosing]
Diagnosing is an action applying to one visible thing.
Understand "diagnose [something]" as diagnosing.
Check diagnosing:
	if the noun is not a person, say "Only people can be diagnosed." instead.
Carry out diagnosing:
	say "YourA health is at [health]%. You have $[balance]."
	
[healing]
Healing is an action applying to one visible thing.
Understand "heal [something]" as healing.
Check healing:
	if the noun is not a person, say "Only people can be healed." instead;
	if the health of the noun is 100, say "You are at full health." instead;
Carry out healing:
	increase the health of the player by 10;
	say "YourC health is at [health of the player]%. You have $[balance of the player].";
	
[eating (from http://inform7.com/book/RB_9_1.html)]
Check eating something:
	if the noun is not food:
		say "[The noun] might be edible, but it's not what you'd consider really food." instead;
	otherwise if the energy of the player is 100:
		say "You're not hungry right now." instead.
Carry out eating something:
	if the energy of the player plus the replenishment energy of the noun is greater than 100:
		now the energy of the player is 100;
	else:
		increase the energy of the player by the replenishment energy of the noun.
After eating something:
	say "Your energy has increased to [energy of the player]%.".
		
[examining]


[----- locations -----]

Basecamp is a room.
The description of Basecamp is "Plaza Argentina Base Camp (4200m). Plaza Argentina is a collection of ragtag temporary structures that form the Guardia’s seasonal presence at the less popular Polish Route base camp. Brightly colored tents dot the plateau. The Polish Glacier looms in the distance, and a swift stream - the headwaters of the Vacas river flow from its base. There is an outhouse on the edge of camp. The weekly helicopter retrieval of the 50 gallon drum of waste is a highlight and one of the only things that marks civilized time.".
South of Basecamp is nowhere.

Camp1 is a room.
The description of Camp1 is "Camp 1 (4900m)  At 16,076 feet above sea level, Camp 1 is higher than most people have every climbed. It is higher than any peak in North America. It is just 1000 feet lower than Everest Base Camp in Nepal. Camp 1 is located at the top of the trail on a plateau. Aconcagua is not visible from here, but its sister, Mt. Ameguino’s snowy peak looms above you. The camp is located several hundred meters from the glacial stream. There is no outhouse (you must bury your waste, away from any area that could contaminate the stream). Carrying water from the stream to boil for hydration and cooking is required. You can only carry part of what you need to Camp 1 on your first trip, so you must plan carefully. Climbers stay one night in Camp 1, then return to Base Camp for more supplies. You have to bring the bare essentials - tent, sleeping bag, camp stove, food. You don’t immediately need ice climbing equipment - mountaineering boots, crampons, ice ax, harness, helmet, rope. But you will eventually need to bring up to Camp 1, as it’s needed at higher elevations.".
Camp1 is north of Basecamp.

Camp2 is a room.
The description of Camp2 is "Camp 2 (5850m) Camp 2 is located at the base of visible portions of the Polish Glacier. Below, it retreats under the moraine, but above you, it appears as a both a wall and a river of blue-green ice and white pillars. These are Los Penitentes, statues in ice guarding the glacier. From here, you can see all the way to the Valle de Vacas. Just like with portages from Plaza Argentina to Camp 1, you must make several trips over 3 days from Camp 1 to Camp 2 to haul the rest of your gear. You leave almost nothing behind at Camp 1, except for an emergency shelter tent and some provisions. You have the option of stashing extra water and saving some of your favorite food for the descent.".
Camp2 is north of Camp1.

Camp3 is a room.
The description of Camp3 is "Camp 3 (400m elevation gain). No one stays in Camp 3 for long. It is above the 'kill zone' where lack of oxygen and hypoxia can cause rapid deterioration in your mental and physical state. If you decide to use Camp 3, it’s only for a quick stop over so you can be up well before sunrise to attempt the summit. You take only the bare essentials: shelter, food, safety equipment, and your climbing gear. You leave your tent and sleeping bag behind, but you won’t be staying at Camp 3 after the summit. You will stop to retrieve your equipment, if you survive the summit, but that’s it. If you choose to summit from Camp 3, you will have less climbing to do, but you will also be weaker from the extra time at altitude.".
Camp3 is north of Camp2.

Summit is a room.
The description of Summit is "Summit (6962m). The summit of Aconcagua is unremarkable in some ways. It’s a rocky outcropping with various markers, cairns and flags placed there by other climbers. You pause, but not for too long, for photographs and to congratulate members of your team for the accomplishment. You know that you are on the highest peak anywhere except for the Himalayas. Now, you must descend before the weather turns or you lose your mind from lack of oxygen.".
Summit is north of Camp3.
North of Summit is nowhere.

