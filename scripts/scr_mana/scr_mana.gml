// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mana(){
	if(mana < 5) mana_counter +=1;
	if(mana_counter = mana_recharge){
		mana += 1;
		mana_counter = 0;
		mana_bar.image_index = mana;
	}
}