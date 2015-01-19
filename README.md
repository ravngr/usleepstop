# µSleepStop
The program does exactly two things:
1. Make a call to SetThreadExecutionState with ES_DISPLAY_REQUIRED set
2. Open a message box

The effect being that as long as that message box is open, Windows will not let the computer go to sleep (or go to screensaver). This is the same mechanism used by many media players to stop the screen turning off while media is playing.

If anybody has any ideas as to how to make the resulting executable smaller then let me know.
