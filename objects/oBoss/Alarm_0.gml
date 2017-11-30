/// @description Insert description here

	switch (selectedBullet) {
		case loadedBullet.linear:
			bullet = instance_create_depth(choosenCannon.x, choosenCannon.y, 0, oLinearBullet);
			bullet.creator = choosenCannon;
			bullet.state = bulletState.loaded;		
			choosenCannon.isLoaded = true;
			break;
		case loadedBullet.sinus:
			bullet = instance_create_depth(choosenCannon.x, choosenCannon.y, 0, oSinusBullet);
			bullet.creator = choosenCannon;
			bullet.state = bulletState.loaded;			
			choosenCannon.isLoaded = true;
			break;
		case loadedBullet.ball:
			bullet = instance_create_depth(choosenCannon.x, choosenCannon.y, 0, oBall);
			bullet.creator = choosenCannon;
			bullet.state = bulletState.loaded;
			choosenCannon.isLoaded = true;
			break;
		default:
			break;
	}
	//choosenCannon.isLoaded = false;


