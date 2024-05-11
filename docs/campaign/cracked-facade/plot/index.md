For GMs eyes only.

```kroki-mermaid

graph TD;
	start((Start))
	endNode((End))

	defeat((Defeated))
	destroy((Gates\nDestroyed))
	escape((Leave\nThe World))
	kill((Kill\nAzathoth))

	fire[The Monastery of the\nArches burns to the ground]
	clue[Investigate the fire]

	chaseGate([Identify the Gate\nin the Monastery])
	chaseArsonist([Identify Earl\nNolthe Torbogenf&auml;llt\nas the Arsonist])
	chaseWork[Ignore the investigation\nand find work]
	workMaster([Find work with\nMaster Stanislav\nUtěkal])
	workLady([Find work\nwith Lady Ilske\nDietingen])
	workEarl([Find work\nwith Earl Nolthe\nTorbogenf&auml;llt])
	distractMission([Take job to clear\nout the abandoned\nMonastery Dorms])
	killEarl([Kill Earl\nNolthe Torbogenf&auml;llt])
	huntMission([Take job\nto hunt a\nThessalhydra])
	masterKillsEarl([While out hunting,\nMaster Stanislav attacked\nEarl Torbogenf&auml;llt, both\ndie in process])

	gateOfTombs[Destroy the Themisian\nGate of Eleven Tombs]
	gateOfArches[Destroy the Themisian\nGate of Seven Arches]
	gateOfScript[Destroy the Themisian\nGate of Five Scripts]
	gateOfSongs[Destroy the Themisian\nGate of Three Ballads]
	gateOfCircle[Destroy the Themisian\nGate of Alpha and Omega]

	seekGates[Seek out the\nother four gates]
	seekTombs[Seek out the\nGate of Eleven Tombs]
	seekScript[Seek out the\nGate of Five Scripts]
	seekSongs[Seek out the\nGate of Three Ballads]
	seekCircle[Seek out the\nGate of Alpha and Omega]

	defiance[Seek out another answer]
	askDeity([Ask for answer\nfrom a deity])
	askEarl([Ask for answer from\nEarl Torbogenf&auml;llt or\nother Gate protector])
	askOracle([Ask for answer\nfrom the Oracle])
	askFlumphs([Ask for answer\nfrom the Flumphs])

	activateArches[The Gate of Seven\nArches is activated]

	start --> fire
	fire --> clue
	clue --> chaseGate
	clue --> chaseArsonist
	clue --> chaseWork

	chaseWork --> workMaster
	chaseWork --> workLady
	chaseWork --> workEarl
	workEarl --> chaseArsonist
	workEarl --> distractMission
	workLady --> distractMission
	distractMission --> activateArches
	workMaster --> huntMission
	huntMission --> masterKillsEarl
	masterKillsEarl --> activateArches

	chaseArsonist --> killEarl
	chaseArsonist --> chaseGate
	killEarl --> activateArches

	chaseGate --> activateArches
	chaseGate --> gateOfArches
	chaseGate --> defiance
	activateArches --> chaseGate

	activateArches --> gateOfArches
	activateArches --> defiance
	activateArches --> defeat

	gateOfArches --> seekGates
	gateOfArches --> defiance
	seekGates --> seekScript
	seekGates --> seekSongs
	seekScript --> gateOfScript
	gateOfScript --> seekTombs
	seekSongs --> gateOfSongs
	gateOfSongs --> seekTombs
	seekTombs --> gateOfTombs
	gateOfTombs --> seekCircle
	seekCircle --> gateOfCircle
	gateOfCircle --> destroy

	seekGates --> defiance
	seekSongs --> defiance
	gateOfSongs --> defiance
	seekScript --> defiance
	gateOfScript --> defiance
	seekTombs --> defiance
	gateOfTombs --> defiance
	seekCircle --> defiance

	defiance --> askDeity
	defiance --> askEarl
	defiance --> askOracle
	defiance --> askFlumphs

	defeat --> endNode
	destroy --> endNode
	escape --> endNode
	kill --> endNode
```
