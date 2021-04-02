VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form frmCam 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Beach Cam"
   ClientHeight    =   4650
   ClientLeft      =   5175
   ClientTop       =   2160
   ClientWidth     =   6270
   LinkTopic       =   "Form1"
   ScaleHeight     =   4650
   ScaleWidth      =   6270
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   1920
      TabIndex        =   1
      Text            =   "Combo1"
      Top             =   0
      Width           =   3375
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   240
      Top             =   4080
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   4215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6015
      ExtentX         =   10610
      ExtentY         =   7435
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Menu mnuExit 
      Caption         =   "E&xit"
   End
End
Attribute VB_Name = "frmCam"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim BeachArray() As String


Private Sub Combo1_Click()
    WebBrowser1.Navigate BeachArray(Combo1.ListIndex)
End Sub

Private Sub Form_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    ReDim BeachArray(4)
    BeachArray(0) = "http://www.oceancitylive.com/plaza/fx/live.jpg"
    BeachArray(1) = "http://www.beachcam.com/ocmd/"
    BeachArray(2) = "http://166.90.144.66/cgi-bin/nph-dtspush.cgi?camera=jpeg/surfline03/cam0.%%08ld.rgb888.enc"
    BeachArray(3) = "http://www.camzone.com/cams/delmar/stream.cgi"
    Combo1.Text = "Ocean City Maryland Boardwalk"
    Combo1.AddItem "Ocean City Maryland Boardwalk"
    Combo1.AddItem "Ocean City Maryland Kite Loft"
    Combo1.AddItem "Sunset Beach Hawaii"
    Combo1.AddItem "DelMar Beach and Surf"
    WebBrowser1.Navigate BeachArray(0)
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub Timer1_Timer()
    WebBrowser1.Refresh
End Sub

