"Summit" by Dustin Palea

The display banner rule is listed before the when play begins stage rule in the startup rules.

When play begins:
	say "hi";

[----- locations -----]

Basecamp is a room.
The description of Basecamp is "All the way at the bottom".

Checkpoint1 is a room.
The description of Checkpoint1 is "Not all the way at the bottom".
Checkpoint1 is north of Basecamp.

Checkpoint2 is a room.
The description of Checkpoint2 is "Midway to the top".
Checkpoint2 is north of Checkpoint1.

[----- object types -----]

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
		
[----- objects -----]
There is a chest called chest1.
Chest1 is in Basecamp.

There is an orange.
The orange is in chest1.