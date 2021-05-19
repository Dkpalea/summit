"Summit" by Dustin Palea

The display banner rule is listed before the when play begins stage rule in the startup rules.

Figure of map is the file "map540.png".

When play begins:
	say "After months of daydreaming, you finally arrive at Mt. Aconcagua – ready to summit your first mountain. Reach the top, collect your bragging rights, and come back down ALIVE.".
	
[----- state -----]
The energyDeclineOfTurn is initially 0.
The healthDeclineOfTurn is initially 0.
The goingByNameWasCanceledDuringTurn is initially false.
The additionalChanceOfSurvivingObstacle is initially 0.
The playerWarnedAboutLowEnergy is initially false.
The playerWarnedAboutLowHealth is initially false.
The playerHasSleptAtCurrentLocation is initially true.
The playerHasReachedSummit is initially false.
The reachedBasecamp is initially false.
The reachedCamp1 is initially false.
The reachedCamp2 is initially false.
The reachedCamp3 is initially false.
The reachedSummit is initially false.




[----- object types -----]

[the player]
[The carrying capacity of the player is 1.]
[The backpack is a player's holdall.]

[thing]
A thing has a number called load.

[room]
A room has a number called energyDecline.
A room has a number called healthDeclineWithNoEnergy.
A room has a number called maxLoad.

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
A person has a number called current load.
The max load of the player is 100.
The current load of the player is 0.




[food]
Food is a kind of thing.
Food is always edible.
Food has a number called the replenishment energy.
The replenishment energy of a food is usually 20.
The description of food is usually "[The noun] can replenish [the replenishment energy of the noun]% of your energy but requires [the load of the noun]% of your load.".

[orange]
An orange is food.
The load of an orange is 3.
The replenishment energy of an orange is 6.

[cliff bar]
A cliff bar is food.
The load of a cliff bar is 5.
The replenishment energy of a cliff bar is 15.

[beef jerky]
beef jerky is food.
The load of beef jerky is 10.
The replenishment energy of beef jerky is 35.

[chicken jerky]
chicken jerky is food.
The load of chicken jerky is 10.
The replenishment energy of chicken jerky is 35.

[water bottle]
A water bottle is a thing.
The load of a water bottle is 15.
A water bottle has a number called remaining sips.
The remaining sips of a water bottle is usually 7.
A water bottle has a number called replenishment energy.
The replenishment energy of a water bottle is 15.
Understand "water" as the water bottle.
The description of a water bottle is "Each sip replenishes [the replenishment energy of the water bottle]% of your energy and there are [the remaining sips of the water bottle] sips remaining. Carrying this insulated bottle requires [the load of the water bottle]% of your load capacity.".



[climbing gear]
Climbing gear is a kind of thing.
Climbing gear has a number called the climbing boost.
The climbing boost of climbing gear is usually 0.
The description of climbing gear is usually "[The noun] will decrease your chance of falling while climbing a glacier by [the climbing boost of the noun]%. It requires [the load of the noun]% of your load capacity.".

[ice axe]
An ice axe is a climbing gear.
The load of an ice axe is 15.
The climbing boost of an ice axe is 15.
Understand "axe" as the ice axe.
The description of an ice axe is "VERY pointy. [The noun] will decrease your chance of falling while climbing a glacier by [the climbing boost of the noun]%. It requires [the load of the noun]% of your load capacity.".

[crampons]
crampons are a climbing gear.
The load of crampons is 15.
The climbing boost of crampons is 15.
Understand "boots" as crampons.
The description of crampons is "Spiky boots. [The noun] will decrease your chance of falling while climbing a glacier by [the climbing boost of the noun]%. It requires [the load of the noun]% of your load capacity.".

[rope]
A rope is a climbing gear.
The load of a rope is 10.
The climbing boost of a rope is 10.
The description of a rope is "A way to secure yourself. [The noun] will decrease your chance of falling while climbing a glacier by [the climbing boost of the noun]%. It requires [the load of the noun]% of your load capacity.".



[first aid kit]
A first aid kit is thing.
The load of a first aid kit is 10.
A first aid kit has a number called the replenishment health.
The replenishment health of a first aid kit is always 30.
The description of a first aid kit is usually "[The noun] will instantly heal you by [the replenishment health of the noun]%. It requires [the load of the noun]% of your load capacity.".



[warming gear]
[Warming gear is a kind of thing.
Warming gear has a number called the warming boost.
The warming boost of warming gear is usually 0.
The description of climbing gear is usually "[The noun] will give you a [the warming boost of the noun]% warming boost at higher altitudes. It requires [the load of the noun]% of your load capacity.".]

[tent]
A tent is an enterable container.
The load of a tent is 20.
A tent has a number called the warming boost.
The warming boost of a tent is 10.
A tent has a number called the replenishment energy.
The replenishment energy of a tent is 20.
The description of a tent is usually "Sleeping in [The noun] will give you [the replenishment energy of the noun]% energy replenishment, and a [the warming boost of the noun]% warming boost energy at higher altitudes. It requires [the load of the noun]% of your load capacity.".

[chemical warming pack]
A chemical warming pack is a thing.
The load of a chemical warming pack is 8.
A chemical warming pack has a number called the warming boost.
The warming boost of a chemical warming pack is 25.
A chemical warming pack has a number called the replenishment energy.
The replenishment energy of a chemical warming pack is 5.
The description of a chemical warming pack is usually "Using [The noun] will give you [the replenishment energy of the noun]% energy replenishment, and a [the warming boost of the noun]% warming boost energy at higher altitudes. It requires [the load of the noun]% of your load capacity.".



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

[backpack]
[A backpack is a thing.
A backpack is wearable.
Understand "bag" as the backpack.
The description of a backpack is "A large, but lightweight and well-supported backpack.".]




[----- object instances -----]

[basecamp chest]
There is a chest called 'Basecamp Chest'.
'Basecamp Chest' is in Basecamp.
'Basecamp Chest' contains an orange, a cliff bar, beef jerky, chicken jerky, a water bottle, an ice axe, crampons, a rope, a tent, a chemical warming pack, a first aid kit.



[----- actions -----]

[map]
Map is an action applying to nothing.
Understand "map" as map.
Carry out map:
	say "You pull out the crumpled map.";
	display figure of map.

[diagnosing]
Diagnosing is an action applying to one visible thing.
Understand "diagnose [something]" as diagnosing.
Check diagnosing:
	if the noun is not a person, say "Only people can be diagnosed." instead.
Carry out diagnosing:
	say "YourA health is at [health]%."
	
[drinking]
Instead of drinking the water bottle:
	sip the noun.

[sipping]
To sip (the water bottle - a water bottle):
	If the remaining sips of the water bottle is greater than 0:
		decrease the remaining sips of the water bottle by 1;
		energize the player by the replenishment energy of the water bottle;
		say "Aaaaahh! Very refreshing. Only [the remaining sips of the water bottle] sips left.";
	else:
		say "Ooops... you're all out of slush.".

[taking]
[NOTE: attempted implementing a backpack system but it became overly complicated for the scope of this game]
[Instead of taking:
	if the player is carrying nothing:
		continue the action;
	else if the player is wearing a backpack or the noun is a backpack:
		if the current load of the player plus the load of the noun is greater than the max load of the player:
			say "You're at max capacity. At this elevation you're max load is [the max load of the player]% and you're currently holding [the current load of the player]%, but this item requires an additional [the load of the noun]%.";
		else:
			increase the current load of the player by the load of the noun;
			continue the action;
	else if the player is carrying a backpack:
		say "You must be *wearing* a backpack to hold items.";
	else:
		say "You must be wearing a backpack to hold items.".]
Instead of taking:
	if the noun is a tent and the player is in the tent:
		say "You have to get out of the tent before taking it.";
	else if the current load of the player plus the load of the noun is greater than the max load of the player:
		say "You're at max capacity. At this elevation you're max load is [the max load of the player]% and you're currently holding [the current load of the player]%, but this item requires an additional [the load of the noun]%.";
	else:
		increase the current load of the player by the load of the noun;
		continue the action;
		
[dropping]
Carry out dropping:
	decrease the current load of the player by the load of the noun.
	
[using]
Using is an action applying to one visible thing.
Understand "use [something]" as using.
Check using:
	if the noun is a first aid kit or the noun is a chemical warming pack:
		continue the action;
	else:
		say "You can't use that... but you can use a first aid kit and a chemical warming pack." instead.
Carry out using:
	if the noun is a first aid kit:
		heal the player by the replenishment health of the noun;
		say "Your health has increased a bit.";
	else if the noun is a chemical warming pack:
		if the player is in Camp3 or the player is in Summit:
			energize the player by the replenishment energy of the noun;
			energize the player by the warming boost of the noun;
			say "Your energy has increased a bit, plus a warming boost since it's so cold up here. [the replenishment energy of the noun] [the warming boost of the noun]";
		else:
			energize the player by the replenishment energy of the noun;
			say "Your energy has increased a bit (but it's not cold enough here for the warming boost)."
			
[sleeping]
[Check sleeping:
	if playerHasSleptAtCurrentLocation is true:
		say "There's no more time for rest, you've got some hiking to do." instead;
	else if the player is not in a tent:
		say "You'd freeze to death if you slept out here - find some shelter." instead;
	else:
		continue the action.]
Instead of sleeping:
	if playerHasSleptAtCurrentLocation is true:
		say "There's no more time for rest, you've got some hiking to do.";
	else if the player is not in a tent:
		say "Sleeping outdoors is a bad idea - it's freezing! You should find shelter but it's totally up to you. Are you sure you want to sleep here?";
		if the player consents:
			now playerHasSleptAtCurrentLocation is true;
			say "You close your eyes... and suffer through a freezing night. Finally, you awake the next day at the crack of dawn.
			
			";
			[no tent]
			if the player is in Camp3 or the player is in Summit:
				say "You got a tiny amount of shut-eye, but it's soooo cold at this altitude that you shivered all night. You're 30% more tired than before.";
				tire the player by 30;
			else:
				say "You got some sleep, but it's pretty cold even down here. You're 10% more tired than before.";
				tire the player by 10;
		else:
			do nothing;
	[in tent]
	else:
		now playerHasSleptAtCurrentLocation is true;
		say "You close your eyes... and awake the next day at the crack of dawn.
		
		";
		if the player is in Camp3 or the player is in Summit:
			energize the player by the replenishment energy of a tent;
			energize the player by the warming boost of a tent;
			say "You're rested and ready to continue, plus the tent kept you nice and ''warm''. Your energy has increased by [the replenishment energy of a tent]% plus a warming boost of [the warming boost of a tent]% since it's so cold up here.";
		else:
			energize the player by the replenishment energy of a tent;
			say "You're rested and ready to continue. Your energy has increased by [the replenishment energy of a tent]%.";
			

	[now playerHasSleptAtCurrentLocation is true;
	if the player is in Camp3 or the player is in Summit:
		if the player is in a tent:
			energize the player by the replenishment energy of a tent;
			energize the player by the warming boost of a tent;
			say "You're rested and ready to continue, plus the tent kept you nice and ''warm''. Your energy has increased by [the replenishment energy of a tent]% plus a warming boost of [the warming boost of a tent]% since it's so cold up here.";
		else:
			say "You got a tiny amount of shut-eye, but it's soooo cold at this altitude that you shivered all night. You're 30% more tired than before.";
			tire the player by 30;
	else:
		if the player is in a tent:
			energize the player by the replenishment energy of a tent;
			say "You're rested and ready to continue. Your energy has increased by [the replenishment energy of a tent]%.";
		else:
			say "You got some sleep, but it's pretty cold even down here. You're a 10% more tired than before.";
			tire the player by 10;]

[entering]
[Carry out entering a tent:
	energize the player by the replenishment energy of the noun.]
After entering a tent:
	say "You enter the tent. It's nice and cozy inside.";

[_healing]
To heal (person - a person) by (number - a number):
	if the health of the person plus the number is greater than 100:
		now the energy of the person is 100;
	else:
		increase the health of the person by the number.

[_hurting]
To hurt (person - a person) by (number - a number):
	if the health of the person minus the number is less than 0:
		now the health of the person is 0;
	else:
		decrease the health of the person by the number.

[_energizing]
To energize (person - a person) by (number - a number):
	if the energy of the person plus the number is greater than 100:
		now the energy of the person is 100;
	else:
		increase the energy of the person by the number;
		
[_tiring]
To tire (person - a person) by (number - a number):
	if the energy of the person minus the number is less than 0:
		now the energy of the person is 0;
	else:
		decrease the energy of the person by the number.
		
[_send]
To send (person - a person) to (place - a room):
	if playerHasSleptAtCurrentLocation is false:
		say "It's dark out, and you need some sleep before making another trek." instead;
	[basecamp -> Camp1]
	else if the player is in Basecamp and the place is Camp1:
		if the player is carrying food and the player is carrying a water bottle and the player is carrying a tent and the player is carrying an ice axe:
			say "Are you sure you want to go to [the place]? This hike will require 20 energy.";
			if the player consents:
				say "You make the trek to [the place] and arrive late in the evening.";
				tire the player by 20;
				move the player to the place;
				now playerHasSleptAtCurrentLocation is false;
			else:
				do nothing instead;
		else:
			say "Before heading up to Camp1, you should at least bring food, water, shelter, and an ice axe.";
	[basecamp <- Camp1]
	else if the player is in Camp1 and the place is Basecamp:
		say "Are you sure you want to go to [the place]? This hike will require 15 energy.";
		if the player consents:
			if the playerHasReachedSummit is true:
				tire the player by 15;
				say "Weak legged and freezing, you make the last trek of the journey and arrive late in the evening.";
				move the player to the place;
				end the story saying "Congratulations! You made it to the Summit AND survived to tell the tale.";
			else:
				say "You make the trek to [the place] and arrive late in the evening.";
				tire the player by 15;
				move the player to the place;
				now playerHasSleptAtCurrentLocation is false;
		else:
			do nothing instead;
	[Camp1 -> Camp2]
	else if the player is in Camp1 and the place is Camp2:
		if the player is not carrying an ice axe:
			say "You'll at least need an ice axe to climb the glacier up ahead.";
		if the current load of the player is greater than the maxLoad of Camp2:
			say "You won't be able to carry all that up there because your max load at Camp2 is only [the maxLoad of Camp2]%. You have to drop some items (though you can always come back for them).";
		else:
			now the additionalChanceOfSurvivingObstacle is 0;
			if the player is carrying an ice axe:
				increase the additionalChanceOfSurvivingObstacle by the climbing boost of an ice axe;
			if the player is carrying crampons:
				increase the additionalChanceOfSurvivingObstacle by the climbing boost of crampons;
			if the player is carrying rope:
				increase the additionalChanceOfSurvivingObstacle by the climbing boost of rope;
			say "Are you sure you want to go to [the place]? A glacier is blocking the path and there's no way around it... there's a 60% chance of success without a fall, plus the total [the additionalChanceOfSurvivingObstacle]% bonus of your climbing gear. The climb will require 30% energy and a fall would reduce your health by 40%.";
			if the player consents:
				say "You begin the climb to [the place].
				
				";
				if a random chance of 60 plus the additionalChanceOfSurvivingObstacle in 100 succeeds:
					say "You climb, climb, and climb.
					
					Your limbs want to give up - but you won't let them.
					
					Aside from a few near death experiences, you finally make it to the top!
					
					By now, it's night.
					";
					tire the player by 30;					
					move the player to the place;
					now playerHasSleptAtCurrentLocation is false;
				else:
					say "You climb, climb, and climb.
				
					Your limbs want to give up – but you won't let them. However, the ice will!
				
					You slip and take a HARD fall.
					
					It's dark out and you're in the same place as before, except this time, you're badly hurt.
					";
					tire the player by 30;
					hurt the player by 40;
			else:
				do nothing instead;
	[Camp1 <- Camp2]
	else if the player is in Camp2 and the place is Camp1:
		now the additionalChanceOfSurvivingObstacle is 0;
		if the player is carrying an ice axe:
			increase the additionalChanceOfSurvivingObstacle by the climbing boost of an ice axe;
		if the player is carrying crampons:
			increase the additionalChanceOfSurvivingObstacle by the climbing boost of crampons;
		if the player is carrying rope:
			increase the additionalChanceOfSurvivingObstacle by the climbing boost of rope;
		say "Are you sure you want to go to [the place]? You'll have to climb back down the glacier... there's a 35% chance of success without a fall, plus the total [the additionalChanceOfSurvivingObstacle]% bonus of your climbing gear. The climb will require 30% energy and a fall would reduce your health by 40%.";
		if the player consents:
			say "You begin the climb to [the place].
			
			
			";
			if a random chance of 60 plus the additionalChanceOfSurvivingObstacle in 100 succeeds:
				say "You climb, climb, and climb.
					
				Your limbs want to give up - but you won't let them.
					
				Aside from a few near death experiences, you finally make it down!";
				tire the player by 30;
				move the player to the place;
				now playerHasSleptAtCurrentLocation is false;
			else:
				say "You climb, climb, and climb.
					
				Your limbs want to give up – but you won't let them. However, the ice will!
					
				You slip and take a HARD fall.";
				tire the player by 30;
				hurt the player by 40;
		else:
			do nothing instead;
		[say "Are you sure you want to go to [the place]? This hike will require 25 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			move the player to the place;
		else:
			do nothing instead;]
	[Camp2 -> Camp3]
	else if the player is in Camp2 and the place is Camp3:
		[no sleeping at camp3]
		if the current load of the player is greater than the maxLoad of Camp3:
			say "You won't be able to carry all that up there because your max load at Camp3 is only [the maxLoad of Camp3]%. You have to drop some items (though you can always come back for them).";
		else:
			say "Are you sure you want to go to [the place]? This hike will require 30 energy.";
			if the player consents:
				say "You make the trek to [the place].";
				tire the player by 30;
				move the player to the place;
			else:
				do nothing instead;
	[Camp2 <- Camp3]
	else if the player is in Camp3 and the place is Camp2:
		now playerHasSleptAtCurrentLocation is false;
		say "Are you sure you want to go to [the place]? This hike will require 25 energy.";
		if the player consents:
			say "You make the trek to [the place].";
			tire the player by 25;
			move the player to the place;
		else:
			do nothing instead;
	[Camp3 -> Summit]
	else if the player is in Camp3 and the place is Summit:
		[no sleeping at summit]
		if the current load of the player is greater than the maxLoad of Summit:
			say "You won't be able to carry all that up there because your max load at the Summit is a mere [the maxLoad of Summit]%. You have to drop some items (though you can always come back for them).";
		else:
			say "Are you sure you want to go to [the place]? This hike will require 40 energy.";
			if the player consents:
				say "Finally, you continue the trek to the [the place].";
				move the player to the place;
				tire the player by 40;
				now the playerHasReachedSummit is true;
			else:
				do nothing instead;
	[Camp3 <- Summit]
	else if the player is in Summit and the place is Camp3:
		[no sleeping at summit]
		say "Are you sure you want to go to back to [the place]? This hike will require 40 energy.";
		if the player consents:
			say "Making it to the Summit is only half the battle - you begin the descent.";
			tire the player by 35;
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
	[Camp3 <- Summit]
	else if the player is in Summit and the noun is South:
		send the player to Camp3;
	else if the player is in a tent:
		say "You bump into the tent wall... Maybe you should get out of the tent before traveling.";
	else:
		say "There's no time for wandering around. We have a mountain to tackle - from South to North and then North to South.".
			
[eating (from http://inform7.com/book/RB_9_1.html)]
Instead of eating something:			
	if the noun is not food:
		say "[The noun] might be edible, but you probably don't want test it out now." instead;
	else if the energy of the player is 100:
		say "You're not hungry right now.";
	else:
		decrease the current load of the player by the load of the noun;
		continue the action.
Carry out eating something:
	energize the player by the replenishment energy of the noun.
After eating something:
	say "Your energy has increased a bit.".





[----- events -----]
Every turn:
	if the goingByNameWasCanceledDuringTurn	 is true:
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
			if reachedCamp1 is false:
				say "Immediately ahead, you see the glacier blocking your path... good thing you brought climbing gear... right?
				
				";
				now reachedCamp1 is true;
		[Camp2]
		if the player is in Camp2:
			increase energyDeclineOfTurn by the energyDecline of Camp2;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Camp2;
			if reachedCamp2 is false:
				say "Beware, you cannot camp in Camp3.
				
				";
				now reachedCamp2 is true;
		[Camp3]
		if the player is in Camp3:
			increase energyDeclineOfTurn by the energyDecline of Camp3;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Camp3;
			if reachedCamp3 is false:
				say "Don't give up, you're almost there!
				
				";
				now reachedCamp3 is true;
		[Summit]
		if the player is in Summit:
			increase energyDeclineOfTurn by the energyDecline of Summit;
			increase healthDeclineOfTurn by the healthDeclineWithNoEnergy of Summit;
			if reachedSummit is false:
				say "Woohoooo! You made it to the summit alive! well mostly... Now, you just have to do it all over again in reverse ;)
				
				";
				now reachedSummit is true;
		tire the player by energyDeclineOfTurn;
		[if no energy, hurt the player]
		if the energy of the player is 0:
			[end condition]
			hurt the player by healthDeclineOfTurn;
			if the health of the player is 0:
				end the story saying "You have died :(";
		[if the player is wearing a backpack or the player is carrying a backpack:]
		say "Current Load: [the current load of the player]%    Max Load: [the max load of the player]%            Energy: [the energy of the player]%    Health: [the health of the player]%";
		[else:
			say "Current Load: 0%    Max Load: 0%            Energy: [the energy of the player]%    Health: [the health of the player]%";]
		if the energy of the player is less than 21 and playerWarnedAboutLowEnergy is false:
			say "
			
			Your energy is low! You need food, water, or rest (probably all three).";
			now playerWarnedAboutLowEnergy is true;
		if the health of the player is less than 21 and playerWarnedAboutLowHealth is false:
			say "
			
			Your health is dangerously low! You need energy to stop losing health, or a first aid kit to heal up.";
			now playerWarnedAboutLowHealth is true.





[----- locations -----]
Basecamp is a room.
The energyDecline of Basecamp is 1.
The healthDeclineWithNoEnergy of Basecamp is 11.
The maxLoad of Basecamp is 100.
The description of Basecamp is "Plaza Argentina Base Camp (4200m) for Mt. Aconcagua. The trail up to the summit begins here. It's a dangerous, but non-technical climb. There is a collection of ragtag temporary structures that form the Guardia’s seasonal presence at the less popular Polish Route base camp. Brightly colored tents dot the plateau. The Polish Glacier looms in the distance, and a swift stream - the headwaters of the Vacas river flow from its base. There is an outhouse on the edge of camp. The weekly helicopter retrieval of the 50 gallon drum of waste is a highlight and one of the only things that marks civilized time.

Use your map to help you decide what supplies you should take on your ascent.

--- Down here, each action requires [the energyDecline of Basecamp] energy point. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Basecamp] points per action. ---".
South of Basecamp is nowhere.

Camp1 is a room.
The energyDecline of Camp1 is 2.
The healthDeclineWithNoEnergy of Camp1 is 12.
The maxLoad of Camp1 is 100.
The description of Camp1 is "Camp 1 (4900m)  At 16,076 feet above sea level, Camp 1 is higher than most people have every climbed. It is higher than any peak in North America. It is just 1000 feet lower than Everest Base Camp in Nepal. Camp 1 is located at the top of the trail on a plateau. Aconcagua is not visible from here, but its sister, Mt. Ameguino’s snowy peak looms above you. The camp is located several hundred meters from the glacial stream. There is no outhouse (you must bury your waste, away from any area that could contaminate the stream).

--- Here, each action requires [the energyDecline of Camp1] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Camp1] points per action. ---".
Camp1 is north of Basecamp.

[glacier obstacle]

Camp2 is a room.
The energyDecline of Camp2 is 5.
The healthDeclineWithNoEnergy of Camp2 is 15.
The maxLoad of Camp2 is 75.
The description of Camp2 is "Camp 2 (5850m) Camp 2 is located just above most of the Polish Glacier. Below, it appears as a both a wall and a river of blue-green ice and white pillars. These are Los Penitentes, statues in ice guarding the glacier. From here, you can see all the way to the Valle de Vacas. Up here it's noticeably colder and much windier, but still manageable.

--- At this altitude, each action requires [the energyDecline of Camp2] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Camp2] points per action. ---".
Camp2 is north of Camp1.

Camp3 is a room.
The energyDecline of Camp3 is 10.
The healthDeclineWithNoEnergy of Camp3 is 20.
The maxLoad of Camp3 is 40.
The description of Camp3 is "Camp 3 (400m elevation gain). No one stays in Camp 3 for long. It is above the 'kill zone' where lack of oxygen and hypoxia can cause rapid deterioration in your mental and physical state. If you decide to use Camp 3, it’s only for a quick stop over so you can be fueled to attempt the summit. You usually only take the bare essentials: a source of energy and warmth. If you survive the summit, you will only stop back here to retrieve your equipment – but that's a BIG if. 

--- Way up here, each action requires [the energyDecline of Camp3] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Camp3] points per action. ---".
Camp3 is north of Camp2.

Summit is a room.
The energyDecline of Summit is 10.
The healthDeclineWithNoEnergy of Summit is 20.
The maxLoad of Summit is 15.
The description of Summit is "Summit (6962m). The summit of Aconcagua is unremarkable in some ways. It’s a rocky outcropping with various markers, cairns and flags placed there by other climbers. You pause, but not for too long, for photographs and to congratulate members of your team for the accomplishment. You know that you are on the highest peak anywhere except for the Himalayas. Now, you must descend before the weather turns or you lose your mind from lack of oxygen. 

--- At the top, each action requires [the energyDecline of Summit] energy points. And without energy, your health will decrease [the healthDeclineWithNoEnergy of Summit] points per action. ---".
Summit is north of Camp3.
North of Summit is nowhere.

