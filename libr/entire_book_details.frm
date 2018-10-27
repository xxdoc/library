VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form LibraryBooks 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Library Books"
   ClientHeight    =   5025
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   17070
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5025
   ScaleWidth      =   17070
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   17055
      Begin VB.CommandButton Command1 
         Caption         =   "Exit"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   12120
         TabIndex        =   2
         Top             =   4320
         Width           =   1335
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   2775
         Left            =   120
         TabIndex        =   1
         Top             =   1320
         Width           =   16935
         _ExtentX        =   29871
         _ExtentY        =   4895
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   27
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Palatino Linotype"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Library Books"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   5280
         TabIndex        =   3
         Top             =   480
         Width           =   1935
      End
   End
End
Attribute VB_Name = "LibraryBooks"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    LibraryBooks.Hide
End Sub

Private Sub Form_Load()
    'If rs.State = 1 Then rs.Close
    Set rs = Nothing
    sql = "select * from book1 "
    rs.CursorLocation = adUseClient
    rs.Open sql, con, adOpenDynamic, adLockOptimistic
    If Not rs.EOF Then
        Set DataGrid1.DataSource = rs
        DataGrid1.Refresh
    Else
        MsgBox ("No Records Found in DataGrid1"), vbExclamation
    'rs.Close
    End If
    'rs.Close
    'DataGrid1.RowHeight = 270

End Sub
