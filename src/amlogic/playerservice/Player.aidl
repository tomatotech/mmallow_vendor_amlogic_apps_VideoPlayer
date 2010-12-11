package amlogic.playerservice;

import amlogic.playerservice.MediaInfo;

interface Player
{
	int Init();

	int Open(String filepath, int position);
	int Play();
	int Pause();
	int Resume();
	int Stop();
	int Close();
	MediaInfo GetMediaInfo();
	int SwitchAID(int id);

	int  SetColorKey(int color);
	void DisableColorKey();

	int Seek(int time);
	int FastForward(int speed);
	int BackForward(int speed);
	
	int	RegisterClientMessager(IBinder hbinder);
}