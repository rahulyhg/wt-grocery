
var vid,playbtn,seekslider,currtimetext,durtimetext,mutebtn,volumeslider,fullscreenbtn;
function initializePlayer(){
	// set object references
	
	vid = document.getElementById("my_video");
	playbtn=document.getElementById("playpausebtn");
	seekslider=document.getElementById("seekslider");
	currtimetext=document.getElementById("currtimetext");
	durtimetext=document.getElementById("durtimetext");
	mutebtn=document.getElementById("mutebtn");
	volumeslider=document.getElementById("volumeslider");
	fullscreenbtn=document.getElementById("fullscreenbtn");
	// Add event listeners
	
	playbtn.addEventListener("click",playPause,false);
	seekslider.addEventListener("change",vidseek,false);
	vid.addEventListener("timeupdate",seektimeupdate,false);
	mutebtn.addEventListener("click",vidmute,false);
	volumeslider.addEventListener("change",setvolume,false);
	fullscreenbtn.addEventListener("click",toggleFullScreen,false);
}
window.onload = initializePlayer;


function seektimeupdate(){
	var nt = vid.currentTime*(100/vid.duration) ;
	seekslider.value=nt;
	var curmins = Math.floor(vid.currentTime/60);
	var cursecs =Math.floor(vid.currentTime-curmins*60);
	var durmins=Math.floor(vid.duration/60);
	var dursecs = Math.round(vid.duration - durmins*60);
	if(cursecs < 10){cursecs ="0"+cursecs;}
	if(dursecs<10){dursecs ="0"+dursecs;}
	if( curmins< 10){curmins ="0"+curmins;}
	if(durmins<10){durmins ="0"+durmins;}
	currtimetext.innerHTML = curmins+":"+cursecs;
	durtimetext.innerHTML = durmins+":"+dursecs;
}
function vidseek(){
	var seekto =vid.duration*(seekslider.value/100);
	vid.currentTime=seekto;
}
function playPause(){
	if(vid.paused){ //vid attribute that tells that video is paused 
		vid.play();
		playbtn.innerHTML="Pause";
	}else{
		vid.pause();
		playbtn.innerHTML="Play";
	}
}
function setvolume(){
	vid.muted=false;
	vid.volume=volumeslider.value/100 ;
}
function vidmute(){
	if(vid.muted){  
		mutebtn.innerHTML="Mute";
		vid.muted=false;
		vid.volume=1;
		volumeslider.value=100;
	}else{
		vid.muted=true;
		mutebtn.innerHTML="Unmute";
		volumeslider.value=0;
	}
}
function toggleFullScreen()
{
	if(vid.requestFullScreen)
		vid.requestFullScreen();
	else if(vid.webkitRequestFullScreen)
		vid.webkitRequestFullScreen();
	else if(vid.mozRequestFullScreen)
		vid.mozRequestFullScreen();
}
