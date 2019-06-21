initialization
outOfWorld: aWorld

	super outOfWorld: aWorld.
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self