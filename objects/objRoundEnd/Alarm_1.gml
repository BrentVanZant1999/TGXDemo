with(objPlayer) {
	instance_destroy();	
}
with (objCooldown) {
	instance_destroy();	
}
with (objHealthBar) {
	instance_destroy();	
}
with (objNameBar){
	instance_destroy();	
}
with (objShadeThrow) {
	instance_destroy();
}
with (objWarning) {
	instance_destroy();	
}
with (objShadowBlast) {
	instance_destroy();	
}

createPlayer(1,objGameData.playerOneLock);
createPlayer(2,objGameData.playerTwoLock);
instance_destroy();