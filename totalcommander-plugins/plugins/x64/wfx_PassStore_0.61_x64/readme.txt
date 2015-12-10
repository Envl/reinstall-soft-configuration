PassStore(x64)  - FS plugin for Total Commander
====================================================
Copyright (c) 2010 by David Jorge.

~PURPOSE~
.This plugin lets you store and manage all your passwords (mail, site,
forum, etc) in a safe way.
Passwords are protected by a master password that is used during the
encyption/decryption process.

~FEATURES~
. Enhanced protection using CEditSecureEx from Dominik Reichl (KeePass Author)
. Uses SH1 for Master password
. Uses Password Based Key derivation create 128 bit key
. Uses AES (Rijndael) for encryption/decryption 128bit key
. URL Field Features like Keepass(c)
. Automatic Database Lock
. Data stored in a xml file
. URL allows to open web sites, programs, programs with params, launch by extension
. Manage you entries like a File System (Copy, rename, move,Find, create dir, delete dir/entry).
  Faster than any other solution which is mouse oriented.
. All your data stored in a XML file. You can store it in wherever you want.

o Version 0.61  20/04/2010
Fixed: No data was saved to xml when using the [New Entry] from inside the folders.

o Version 0.6  15/04/2010
Updated: tree.hh module updated to 2.65 (03-Apr-2009)
Added: Compression/Decompression code modified and now uses Crypto++ lib.
Added: Custom Columns (Encrypted, Date Expired, Comment). 
       For "Date Expired" check the DateFormat switch in the ini file. For Comment check ini setting ExplicitComment.
Added: A delay for each key pressed can be set in the ini file. In some applications (like IE6) autotype work better with a delay of 50 ms or 60 ms.
Added: Alt-Enter improved. Now you can launch programs with parameters. Default launch by extension also improved. for instance "Remote machine.RDP" was not handled before.
Added: New ini switches. Check the available switches below
Fixed: Tool tips in New Entry dialog
Fixed: Expired date, creation time, modified time and url are now also encrypted in the xml
Fixed: Rename file to the same name of an existing one
Fixed: Renaming a folder to the same name of an entry would have also change the icon
Fixed: Some problems regarding move, copy, delete in some situations
Fixed: The user could still load the database (but not decrypt encrypted entries) with a wrong master password.
A lot of fixes were made and code redesigned to make the plugin much more stable than previous version.

Note: A lot of tests were done in this version so that a much more stable version could be release.
Thanks to Trpimir Blaževic' J (aka Sony) for his hard work while testing all the betas. Nevertheless you should do a backup of your database before using this version.

~License: FreeWare/Postalware~
PassStore is free of charge, but i'd like to receive a postcard from wherever you are. If you use PassStore and find it helpfull,
for the time and effort that i put in to create this plugin, i think i deserve that. It's  great for the motivation and at least i know
that i'm not the only one using it :). But in the end it's up to you to do so. Just sent me an email to djorgepbl@gmail.com with "PassStore" in the subject and ask me for the address.

How to use Auto-type so that passStore fills the text fields automatically:

. AutoType
  . Configure Autotype in the Notes field. Example for GMail
     ----notes field begin-----
	This is my gmail account
	Auto-Type:{USERNAME}{TAB}{PASSWORD}{ENTER}
	Auto-Type-Window:*GMAIL*
     ----notes field end-----

. Using it
    Now, if the browser is opened in the gmail web page and if it is the window in foregroung, whenever the user presses the chosen hot key (default is CTRL-SHIFT-Q),
    PassStore will check all Auto-Type-Window for a match, and will enter the text that is specified in the Auto-Type field.
    Several Auto-Type-Window are allowed.
    If PassStore finds more than one entry that is matching with the active window, the user will be asked to choose from a listbox.


~More information on AutoType and Global hotkey~
Firs, an HotKey must be set. PassStore will read from the ini file the HotKey. If none is found it will use the keys CTRL-ALT-Q by default. For instance to set the Hotkey to CTRL-SHIFT-Q add to passstore.ini file the folowing:

HotKey=SHIFT-CTRL-Q

The Auto-Type feature works in the same way of the one of KeePass. It uses the same SendKey class from Lallous and therefore it uses the same syntax. To check all the available command syntax you can use check http://www.codeproject.com/cpp/sendkeys_cpp_Article.asp.

Lets configure an entry for a GMail account that is already in PassStore.
Open the GMail entry and click modify. All the auto type text must be configured in the notes field.
----notes field begin-----
This is my gmail account
Auto-Type:{USERNAME}{TAB}{PASSWORD}{ENTER}
Auto-Type-Window:*GMAIL*
----notes field end-----

Now, if the browser is opened in the gmail web page and if it is the window in foregroung, whenever the user presses the chosen hot key, PassStore will check all Auto-Type-Window for a match, and will enter the text that is specified in the Auto-Type field.
Several Auto-Type-Window are allowed.
If PassStore finds more than one entry that is matching with the active window, the user will be asked to choose from a listbox.

For instance here is my notes for the Gmail entry in PassStore:
Gmai Account
Auto-Type-Window:*GMAIL*
Auto-Type-Window:*NOTEBOOK*
Auto-Type-Window:*GRUPOS GOOGLE*
Auto-Type-Window:Google Accounts*
Auto-Type-Window:Personalize your homepage*

In my  GMail entry there are several auto-type-window, but no Auto-Type!!! Thats because PassStore will use by default the Auto-Type: {USERNAME}{TAB}{PASSWORD}{ENTER}
if you need another Auto-Type specfy one. With this, PassStore can Auto-Type my login in Gmail, Google notebook and google goups.

.Auto-Type-Window
If no Auto-Type-Window is defined, PassStore will use Auto-Type-Window: *{TiTLE}*. 
You can use the folowing wildcard:

MYMAIL    - Match windows that are named exactly MYMAIL
MYMAIL*   - Match windows that start with MYMAIL
*MYMAIL   - Match windows that end with MYMAIL
*MYMAIL* - Match windows that have the string MYMAIL somewhere in the title.
*                 - Match all windows. This wild card is only taken in account if the option
                     "Default Auto-Type-Window" is set to ON.

Regular expressions are not supported. You may only put a '*' in the begin or in the end or in both the begin and end. Don't put '*' int he midle of a string. The behavior will be undefined.

If you have experience with the Auto-Type feature of KeePass, you will see that PassStore use the same syntax and it will be easier.

In 99% of the cases you will only use the commands that are available through the help buttons of PassStore. Remember to have the focus in the notes edit field.
L - Inserts last window found in foreground. 
A - Inserts "Auto-Type:"
W - Inserts "Auto-Type-Window:"
U - Inserts "{USERNAME}"
P  - Inserts "{PASSWORD}"
E  - Inserts enter "~"
D -Inserts {DELAY X}
T - Inserts {TAB}
S - Inserts {SPACE}

The "L" button is very useful. Lets suppose you want to add Auto-Type to a new entry named My Home Page wich is associated with your homepage web site. Bring  the web page to the foreground and predd the PassStore defined HotKey. Next, go the PassStore entry "My Home Page", click modify and now press the "L" button. The window text of your homepage will be in the notes field.

To see all the availble command syntax check the page in codeproject. In the future i will release a better help file.

THIS FEATURE WAS ONLY TESTED ON WINDOWS XP SP2




Example for a ini file:
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
[MAIN]

;example for datafile
; datafile=%USERPROFILE%\database.xml
; datafile=%COMMANDER_PATH%\plugins\WFX\PassStore\database.xml
; datafile=d:\djorge\MyDocu~1\totalcmd\plugins\wfx\PassSt~1\database.xml
datafile=d:\djorge\My Documents\My Dropbox\PassStore\database.xml

;set to 1 to enable debuging mode
debuglogging=1

;hot key for auto-type
HotKey=CTRL-SHIFT-Q

;set to 1 to appear [New Entry] in each folder
NewEntryFolder=1


[KEYGEN]

;Number of letters for generated passwords
length=20


;This setting is automatically updated when you exit TC
[AutoType]
DefaultATW=0


[AUTOLOCK]

;Set to 0 to disable AutoLock
;Set to 1 to enable AutoLock
Autolock=1

;Used only if Autolock is enabled
;Time in seconds. In this case, if there is no activity in the plugin for 60 seconds the plugin will lock and ask the password after timeout.
TimeOutLock=36000
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Available ini settings:

   	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[MAIN]
	//DebugLogging=true
	//
	//Definition:
	// Default: false
	// If set to true a file will be created with plugin activity that is for development purpose
  	/////////////////////////////////////////////////////////////////////////////////
  	
  	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[MAIN]
	// NewEntryFolder=true
   	//
	//Definition:
	// Default: true
	// If set to true this will add a virtual entry called "[New Entry]" to each folder
	// that allows the user to easily add an entry to a folder.
	// If set to false the virtual entry "[New Entry]" will not appear in each folder and the only way to
	// add new entries will be from the root plugin dir.
   	/////////////////////////////////////////////////////////////////////////////////

	/////////////////////////////////////////////////////////////////////////////////
	//[MAIN]
	//HotKey=CTRL-SHIFT-Q
   	//
	//Definition
	// Default: CTRL-SHIFT-Q
	// This will set the hot key to enable auto-type feature
	/////////////////////////////////////////////////////////////////////////////////

  	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[DEVELOPMENT]
	//MasterPassword=clear text password
  	//
	//Definition:
	// I use this setting for development of plugin to prevent it to aks me for the password.
	// Be carefull with this setting because all of you data will be decoded with the password that
	// is in the ini file. I am sharing it because it can also be usefull for others.
	/////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[KEYGEN]
	//Length=10
 	//
	//Definition
	// Default: 8
	// When the user is asked to set the password for an entry there is a button to let th eplugin generate
	// a password. This field sets the lenght of the generated password
	/////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[AUTOLOCK]
	//Autolock=true
   	//
	//Definition:
	// Default: true
	// Turns on/off automatic lock of database
	/////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[AUTOLOCK]
	//TimeOutLock=30
	//
	// Definition:
	// Default: 30
	// This sets the time in seconds before passStore will lock the database.
	// passStore. If you want to set a value of delay for a specific entry, you can set it in the notes field.
	/////////////////////////////////////////////////////////////////////////////////

New in version 0.6:
	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[AUTOTYPE]
	//Delay=60
  	//
	//Definition:
	// There will be a delay of 60 ms between each key pressed in this case. This will work for every entry in
	// passStore. If you want to set a value of delay for a specific entry, you can set it in the notes
	/////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[CustomColumn]
	//ExplicitComment=0
   	//
	//Definition:
	// Default: 0
	// ExplicitComment = 1 means that the text extracted to the custom column
	// must be signaled with placeholder "Comment:".
	// In notes field place a line with "Comment: this is a comment that will appear in custom column"
	// and the text (the leght depend of column size) will appear in the custom column
	//
	// ExplicitComment = 0 means that the text extracted will be the first line not empty
	// that hasn't the known strings "Auto-Type:" and "Auto-type-Window:"
	/////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////
	//Declaration:
	//[MAIN]
	//DateFormat=yyyy-mm-dd
   	//
	//Definition:
	// Default: yyyy-mm-dd
	// DateFormat=yyyy-dd-mm
	//
	// DateFormat=dd-mm-yyyy
	/////////////////////////////////////////////////////////////////////////////////
	

~History~
o Version 0.5  30/11/2006
Added: Global  hotkey  and auto-type. Check section ~Global  hotkey  and auto-type~ of readme.txt .(Only tested on WinXP SP2!)
Added: Special button "Default Auto Type Window" to specify wether the plugin should use default Auto-Type-Window. See Readme.
Added: Help buttons to help Auto-Type syntax
Added: Password generation 
Fixed: Copying an encrypted entry to another place of the plugin file system had a problem in the resulting xml.
Changed: Plugin is now statically linked with mfc
Updated: tree.hh module updated to 2.2 (August, 2006)

o Version 0.43.2  02/10/2006
Fixed: The user could change the master password to an empty password.

o Version 0.43.1  18/09/2006
Fixed: There was a problem in xml parsing causing the plugin to crash sometimes.
Fixed: It was possible to delete/move/create dir with plugin locked but not refreshed yet.
Fixed: Alt-Enter was not working fine.

o Version 0.43  04/08/2006
Fixed: Plugin crash during installation.
Added: Encryption to URL
Added: Encryption to Title
Modif: In the view entry window, the button "Show Password" is now the default one.
If the user wants to see the passsword he just needs to press enter twice. First time to 
show dialog "View Entry" and second time to show password.

o Version 0.4  12/07/2006
Fixed: Plugin crash whenever failed to decrypt.
Fixed: If the user tried to change the master password it could see the enties in the pannel.
Fixed: Version resource added to dll.
Added: Master passwor is now stored in xml and not in INI.
Added: Encryption to notes and username.
Added: Option to lock database.
Added: Option to automatically lock database after a timeout.
Added: Overwrite with copy and move as it were a real file system.
Added: Creation date is now used and appears in pannel.
Added: Alt-Enter executes the the text that is in the URL field (can be anything handled by shell)
Added: URL Field Features. Use special strings %PASSWORD%, %USERNAME%, %NOTES%, {PASSWORD}, {USERNAME} and {NOTES}. They wil be substituted in the URL.
Added: Option to easily convert clear text entries to encrypted entries.
Added: Number of entries is shown in field size of special file "New Entry"

o Version 0.31
Lost changes of that version.

Version 0.25 ~ 24/05/2006
~HISTORY (begins with 0.25)~
Fixed: The master password could be changed even without knowing the password.
Added: In a renaming folder operation the new icon was not stored
Added: "New Entry" could be copy, moved and renamed
Added: Notes field won't allow several lines of imput
Added: Allows clear text passwords
Added: The tag <pswd> is not treated like a folder anymore. In the latest version <pswd>My Passwords</pswd> causes the appearance of a folder named "My Passwords". This was causing some internal problems.
Added: The user can choose wether he wants the log file to be created via INI file
Added: Environment variable %COMMANDER_PATH% can be used in the INI file
	
~Acknowledgments~
.Christian Ghisler for Total Commander;
.Dominik Reichl for CSecureEditEx component;
.Lee Thomason for Tiny XML;
.Kasper Peeters for Tree STL like;
.Pedro Vaz for the Dutch Pipoca, icons and English review.
.Lallous for its SendKeys and Global Hot key  c++  classes.
.Wei Dai for the fantastic Crypto++ library
.Trpimir Blaževic' J (aka Sony) for helping me discovering the problems and encouraging me to continue the plugin development

Resources:
SendKeys: http://www.codeproject.com/cpp/sendkeys_cpp_Article.asp.
Hotkey handler: http://www.codeproject.com/system/chotkeyhandler.asp

Go to TC forum for suggestions, ideas, bug reports and critics or any other
thoughts you might want to share.

~REQUIREMENTS~
.You need the VC8 dll runtimes.
.URL: http://www.microsoft.com/downloads/details.aspx?familyid=32BC1BEE-A3F9-4C13-9C99-220B62A191EE

~DISCLAIMER~
This software is provided "as-is". No warranty is provided.
You use this program at your own risk.
The author is not responsible for any data loss, damages, etc.