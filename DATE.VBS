		' CHECKS IF dateOfBirth.TXT exists - FUNCTION
		Function FileExists(FilePath)
		  Set fso = CreateObject("Scripting.FileSystemObject")
		  If fso.FileExists(FilePath) Then
		    FileExists=CBool(1) ' GoTo FileCheck
		  Else
		    FileExists=CBool(0) ' GoTo setup
		  End If
		End Function

' setup:

dim birthday, setbirthday, noText, dobWarn
dobWarn=("Birthday field is blank!" & vbNewLine & "Put a date in, fool!")
noText=""
setbirthday =InputBox("Please input your birthday." & vbNewLine & "Format your birthday as so:" & vbNewLine & date())
 If setbirthday.Text=(noText) then MsgBox(dobWarn) Else ' this line doesn't work, if you enable it, I will find you.

' Folder Creation
   Dim objShell
   Dim strPath

   Set objShell = Wscript.CreateObject("Wscript.Shell") 
   strPath = objShell.SpecialFolders("Desktop")
   	dim filesys, newfolder, newfolderpath
	newfolderpath = "..\AppData\Local\DATEDOTVBS\"
	set filesys=CreateObject("Scripting.FileSystemObject")
	If Not filesys.FolderExists(newfolderpath) Then
	Set newfolder = filesys.CreateFolder(newfolderpath) ' This literally ensures you're running it on the Desktop. Thanks VBS.
	End If

	' File Creation
		dim filetxt, getname, path
		Set filesys = CreateObject("Scripting.FileSystemObject")
		Set filetxt = filesys.CreateTextFile("..\AppData\Local\DATEDOTVBS\dateOfBirth.txt", True)
		path = filesys.GetAbsolutePathName("..\AppData\Local\DATEDOTVBS\dateOfBirth.txt")
		getname = filesys.GetFileName(path)
		filetxt.WriteLine("date" & chr(40) & setbirthday & chr(41)) ' This saves the user's birthday.
		filetxt.Close
		If filesys.FileExists(path) Then
		End If
	' fileCheck:
			' Checks the user's inputted birthday
		       dim IHATEYOU
			IHATEYOU = fso.OpenTextFile("..\AppData\Local\DATEDOTVBS\dateOfBirth.txt")
		WScript.Echo(IHATEYOU)
	
		' 

msgBox(date)