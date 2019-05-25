if (isActive){
	if (player!=noone) {
		switch(ability){
		case(1):
		{
			amountLeft = player.alarm[2];
			amountTotal = player.oneCooldownDef;
		}
		break;
		case(2):
		{
			amountLeft = player.alarm[3];
			amountTotal = player.twoCooldownDef;
		}
		break;
		case(3):
		{
			amountLeft = player.alarm[4];
			amountTotal = player.threeCooldownDef;
		}
		break;
		case(4):
		{
			amountLeft = player.alarm[1];
			amountTotal = player.fourCooldownDef;
		}
		break;
		}
	}
	else {
		amountLeft = 0;
		amountTotal = 100; 
	}
}

amountToShow = amountTotal+2 - amountLeft; 
amountShow = amountToShow/amountTotal;
yShow = yLength*amountShow;

