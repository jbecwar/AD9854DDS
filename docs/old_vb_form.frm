VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1
   Caption         =   "AD9852/9854Ð´ÆµÈí¼þ"
   ClientHeight    =   5130
   ClientLeft      =   60
   ClientTop       =   435
   ClientWidth     =   6000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5130
   ScaleWidth      =   6000
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox Combo_ic
      BackColor       =   &H00C0FFC0&
      Height          =   300
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   34
      Top             =   3120
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.TextBox Text_out_frequency
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   26
      Text            =   "1"
      Top             =   360
      Width           =   2175
   End
   Begin VB.CheckBox Check_triangle
      Caption         =   "Check1"
      Height          =   255
      Left            =   5400
      TabIndex        =   25
      Top             =   4193
      Width           =   255
   End
   Begin VB.CheckBox Check_amp
      BackColor       =   &H00E0E0E0&
      Caption         =   "Check1"
      Height          =   375
      Left            =   3000
      TabIndex        =   24
      Top             =   3353
      Width           =   255
   End
   Begin VB.CommandButton Command_set_sweep_time
      Caption         =   "²½½øÆµÂÊ"
      Height          =   375
      Left            =   1800
      TabIndex        =   23
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton Command_set_step
      Caption         =   "²½½ø"
      Height          =   375
      Left            =   1800
      TabIndex        =   22
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command_set_f2
      Caption         =   "ÆµÂÊ2"
      Height          =   375
      Left            =   1800
      TabIndex        =   21
      Top             =   960
      Width           =   1215
   End
   Begin VB.ComboBox Combo_mode
      BackColor       =   &H00C0FFC0&
      Height          =   300
      Left            =   3120
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   4650
      Width           =   1455
   End
   Begin VB.TextBox Text_time
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   17
      Text            =   "1"
      Top             =   2160
      Width           =   2175
   End
   Begin VB.TextBox Text_step
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   15
      Text            =   "0.00001"
      Top             =   1560
      Width           =   2175
   End
   Begin VB.TextBox Text_frequency2
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   13
      Text            =   "10"
      Top             =   960
      Width           =   2175
   End
   Begin MSComctlLib.Slider Slider1
      Height          =   360
      Left            =   3480
      TabIndex        =   12
      Top             =   3360
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   635
      _Version        =   393216
      Max             =   4095
      SelStart        =   1024
      TickStyle       =   3
      Value           =   1024
   End
   Begin VB.Timer Timer1
      Enabled         =   0   'False
      Interval        =   100
      Left            =   720
      Top             =   4560
   End
   Begin VB.ComboBox Combo_mul
      BackColor       =   &H00C0FFC0&
      Height          =   300
      Left            =   3120
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   4170
      Width           =   855
   End
   Begin VB.ComboBox Combo_lang
      BackColor       =   &H00C0FFC0&
      Height          =   300
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   2640
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.TextBox Text_std
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   7
      Text            =   "10"
      Top             =   2813
      Width           =   2175
   End
   Begin VB.CheckBox Check_WE
      Caption         =   "Check1"
      Height          =   255
      Left            =   960
      TabIndex        =   6
      Top             =   3960
      Width           =   255
   End
   Begin VB.ComboBox COM_Combo
      BackColor       =   &H00C0FFC0&
      Height          =   300
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   360
      Width           =   1335
   End
   Begin VB.CommandButton Command_com_closed
      Caption         =   "¹Ø±Õ´®¿Ú"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton Command_com_opened
      Caption         =   "´ò¿ª´®¿Ú"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command_set_f1
      Caption         =   "ÆµÂÊ1"
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   360
      Width           =   1215
   End
   Begin MSCommLib.MSComm MSComm1
      Left            =   0
      Top             =   4440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   0   'False
      InputLen        =   512
      RThreshold      =   100
   End
   Begin MSComctlLib.Slider Slider2
      Height          =   360
      Left            =   3480
      TabIndex        =   31
      Top             =   3720
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   635
      _Version        =   393216
      Max             =   4095
      SelStart        =   1024
      TickStyle       =   3
      Value           =   1024
   End
   Begin VB.Label Label_Q
      AutoSize        =   -1  'True
      Caption         =   "Q"
      Height          =   180
      Left            =   3360
      TabIndex        =   33
      Top             =   3810
      Width           =   90
   End
   Begin VB.Label Label_I
      AutoSize        =   -1  'True
      Caption         =   "I"
      Height          =   180
      Left            =   3360
      TabIndex        =   32
      Top             =   3450
      Width           =   90
   End
   Begin VB.Label Label3
      AutoSize        =   -1  'True
      Caption         =   "¹Ì»¯"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   240
      TabIndex        =   30
      Top             =   3960
      Width           =   480
   End
   Begin VB.Label Label5
      AutoSize        =   -1  'True
      Caption         =   "»ù×¼ÆµÂÊ"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1920
      TabIndex        =   29
      Top             =   2880
      Width           =   960
   End
   Begin VB.Label Label8
      AutoSize        =   -1  'True
      Caption         =   "Êä³ö·ù¶È"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1920
      TabIndex        =   28
      Top             =   3420
      Width           =   960
   End
   Begin VB.Label Label1
      AutoSize        =   -1  'True
      Caption         =   "triangle"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   4200
      TabIndex        =   27
      Top             =   4200
      Width           =   1080
   End
   Begin VB.Label Label15
      AutoSize        =   -1  'True
      Caption         =   "¹¤×÷Ä£Ê½"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1920
      TabIndex        =   20
      Top             =   4680
      Width           =   960
   End
   Begin VB.Label Label13
      AutoSize        =   -1  'True
      Caption         =   "MHz"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5400
      TabIndex        =   18
      Top             =   2227
      Width           =   360
   End
   Begin VB.Label Label12
      AutoSize        =   -1  'True
      Caption         =   "MHz"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5400
      TabIndex        =   16
      Top             =   1627
      Width           =   360
   End
   Begin VB.Label Label10
      AutoSize        =   -1  'True
      Caption         =   "MHz"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5400
      TabIndex        =   14
      Top             =   1027
      Width           =   360
   End
   Begin VB.Label Label7
      AutoSize        =   -1  'True
      Caption         =   "±¶ÆµÑ¡Ôñ"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1920
      TabIndex        =   11
      Top             =   4200
      Width           =   960
   End
   Begin VB.Label Label6
      AutoSize        =   -1  'True
      Caption         =   "MHz"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5400
      TabIndex        =   8
      Top             =   2880
      Width           =   360
   End
   Begin VB.Label Label_com_state
      AutoSize        =   -1  'True
      Caption         =   "´®¿Ú¹Ø±Õ"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   360
      TabIndex        =   5
      Top             =   840
      Width           =   1020
   End
   Begin VB.Label Label2
      AutoSize        =   -1  'True
      Caption         =   "MHz"
      BeginProperty Font
         Name            =   "ËÎÌå"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5400
      TabIndex        =   0
      Top             =   427
      Width           =   360
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

Option Explicit
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Dim fre_std As Double
Const version = "BG7TBL 2010-08-21"
Const logo_en = "AD9854 Control_Softwear"
Dim uart_data As String
Dim uart_buf As String
Dim timer1_count As Long
Dim write_ee As String
Dim ad9852_w(9) As Byte

Private Sub Check_amp_Click()
config_dds
If Check_amp.Value = Checked Then
Slider1.Enabled = True
Slider2.Enabled = True
Else
Slider1.Enabled = False
Slider2.Enabled = False
End If
End Sub

Private Sub Check_triangle_Click()
config_dds
End Sub

Private Sub Combo_ic_Click()
If Combo_ic.ListIndex = 0 Then

Slider2.Visible = False
Label_I.Visible = False
Label_Q.Visible = False
Else

Slider2.Visible = True
Label_I.Visible = True
Label_Q.Visible = True
End If
End Sub

Private Sub Combo_mode_Click()

config_dds
End Sub

Private Sub Combo_mul_Click()

config_dds

End Sub

Private Sub Command_com_closed_Click()
If MSComm1.PortOpen = False Then
  Exit Sub
End If
 MSComm1.PortOpen = False
com_closed:
If Combo_lang.ListIndex = 0 Then
  Label_com_state.Caption = "´®¿Ú¹Ø±Õ"
ElseIf Combo_lang.ListIndex = 1 Then
  Label_com_state.Caption = "´®¿ÚêPé]"
Else
  Label_com_state.Caption = "COM closed"
End If

Label_com_state.ForeColor = &H0&

End Sub

Private Sub Command_com_opened_Click()

On Error GoTo errorHandler

'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

If MSComm1.PortOpen = True Then
  GoTo com_opened
End If
MSComm1.CommPort = COM_Combo.ListIndex + 1 'ÉèÖÃÎªCOM1

 MSComm1.Settings = "9600,n,8,1"  'ÉèÖÃÍ¨ÐÅ²¨ÌØÂÊ

  MSComm1.RThreshold = 1  '²úÉú´®¿ÚÊÂ¼þ
  MSComm1.InputMode = comInputModeText
  MSComm1.PortOpen = True
com_opened:

If Combo_lang.ListIndex = 0 Then
  Label_com_state.Caption = "´®¿Ú´ò¿ª"
ElseIf Combo_lang.ListIndex = 1 Then
  Label_com_state.Caption = "´®¿Ú´òé_"
Else
  Label_com_state.Caption = "COM opened"
End If

  Label_com_state.ForeColor = &HFF&

  Exit Sub
errorHandler:

If Combo_lang.ListIndex = 0 Then
  MsgBox "    ´®¿Ú´íÎó", vbOKOnly, logo_en
ElseIf Combo_lang.ListIndex = 1 Then
   MsgBox "    ´®¿ÚåeÕ`", vbOKOnly, logo_en
Else
  MsgBox "    COM ERR", vbOKOnly, logo_en
End If

End Sub

Private Sub Command4_Click()
MSComm1.Output = "$RD*"
End Sub

Private Sub Command_set_f1_Click()
Dim fre_out As Double
Dim fre_tmp As Currency
Dim temp As Currency
Dim temp_h As Currency
Dim temp_l As Currency

Dim uart(20) As Byte

Dim tmp As Long
'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If
If MSComm1.PortOpen = False Then
  Exit Sub
End If
'¼ÆËãDDSÊä³öÆµÂÊ
uart_buf = ""

fre_out = Val(Text_out_frequency.Text) * 1000000 '»ñµÃÊä³öÆµÂÊ

fre_std = Combo_mul.ListIndex
If fre_std = 0 Then
fre_std = 1
End If
fre_std = Val(Text_std.Text) * fre_std * 1000000 '¼ÆËãÊ±ÖÓÆµÂÊ

temp = fre_out / fre_std * 2 ^ 48 '¼ÆËãDDS¿ØÖÆÆµÂÊ×Ö
temp_h = temp / 2 ^ 24
temp_l = Fix(temp_h)
temp_l = temp - temp_l * 2 ^ 24

tmp = Fix(temp_l)
CopyMemory uart(0), tmp, 4
ad9852_w(1) = uart(0)
ad9852_w(2) = uart(1)
ad9852_w(3) = uart(2)
tmp = Fix(temp_h)
CopyMemory uart(0), tmp, 4
ad9852_w(4) = uart(0)
ad9852_w(5) = uart(1)
ad9852_w(6) = uart(2)

ad9852_w(0) = &H2 'ÉèÖÃµØÖ·

send_uart

End Sub

Private Sub Command_set_f2_Click()
Dim fre_out As Double
Dim fre_tmp As Currency
Dim temp As Currency
Dim temp_h As Currency
Dim temp_l As Currency

Dim uart(20) As Byte

Dim tmp As Long

'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If
If MSComm1.PortOpen = False Then
  Exit Sub
End If
'¼ÆËãDDSÊä³öÆµÂÊ
uart_buf = ""

fre_out = Val(Text_frequency2.Text) * 1000000 '»ñµÃÊä³öÆµÂÊ

fre_std = Combo_mul.ListIndex
If fre_std = 0 Then
fre_std = 1
End If
fre_std = Val(Text_std.Text) * fre_std * 1000000

temp = fre_out / fre_std * 2 ^ 48 '¼ÆËãDDS¿ØÖÆÆµÂÊ×Ö
temp_h = temp / 2 ^ 24
temp_l = Fix(temp_h)
temp_l = temp - temp_l * 2 ^ 24

tmp = Fix(temp_l)
CopyMemory uart(0), tmp, 4
ad9852_w(1) = uart(0)
ad9852_w(2) = uart(1)
ad9852_w(3) = uart(2)
tmp = Fix(temp_h)
CopyMemory uart(0), tmp, 4
ad9852_w(4) = uart(0)
ad9852_w(5) = uart(1)
ad9852_w(6) = uart(2)

ad9852_w(0) = &H3 'ÉèÖÃµØÖ·

send_uart
End Sub

Private Sub Command_set_step_Click()
Dim fre_out As Double
Dim fre_tmp As Currency
Dim temp As Currency
Dim temp_h As Currency
Dim temp_l As Currency

Dim uart(20) As Byte

Dim tmp As Long

'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If
If MSComm1.PortOpen = False Then
  Exit Sub
End If
'¼ÆËãDDSÊä³öÆµÂÊ
uart_buf = ""

fre_out = Val(Text_step.Text) * 1000000 '»ñµÃÊä³öÆµÂÊ

fre_std = Combo_mul.ListIndex
If fre_std = 0 Then
fre_std = 1
End If
fre_std = Val(Text_std.Text) * fre_std * 1000000

temp = fre_out / fre_std * 2 ^ 48 '¼ÆËãDDS¿ØÖÆÆµÂÊ×Ö
temp_h = temp / 2 ^ 24
temp_l = Fix(temp_h)
temp_l = temp - temp_l * 2 ^ 24

tmp = Fix(temp_l)
CopyMemory uart(0), tmp, 4
ad9852_w(1) = uart(0)
ad9852_w(2) = uart(1)
ad9852_w(3) = uart(2)
tmp = Fix(temp_h)
CopyMemory uart(0), tmp, 4
ad9852_w(4) = uart(0)
ad9852_w(5) = uart(1)
ad9852_w(6) = uart(2)

ad9852_w(0) = &H4 'ÉèÖÃµØÖ·

send_uart
End Sub

Private Sub Command_set_sweep_time_Click()
Dim fre_out As Double
Dim fre_tmp As Currency
Dim temp As Currency
Dim temp_h As Currency
Dim temp_l As Currency

Dim uart(20) As Byte

Dim tmp As Long

'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If
If MSComm1.PortOpen = False Then
  Exit Sub
End If
uart_buf = ""

fre_std = Combo_mul.ListIndex '¼ÆËã»ù×¼ÆµÂÊ
If fre_std = 0 Then
fre_std = 1
End If
fre_std = Val(Text_std.Text) * fre_std * 1000000

fre_out = Val(Text_time.Text) * 1000000

fre_out = fre_std / fre_out

If fre_out > 2 ^ 20 - 1 Then
fre_out = 2 ^ 20 - 1
Text_time.Text = fre_std / fre_out / 1000000
End If


temp = fre_out

temp_h = temp / 2 ^ 24
temp_l = Fix(temp_h)
temp_l = temp - temp_l * 2 ^ 24

tmp = Fix(temp_l)
CopyMemory uart(0), tmp, 4
ad9852_w(1) = uart(0)
ad9852_w(2) = uart(1)
ad9852_w(3) = uart(2)
tmp = Fix(temp_h)
CopyMemory uart(0), tmp, 4
ad9852_w(4) = uart(0)
ad9852_w(5) = uart(1)
ad9852_w(6) = uart(2)

ad9852_w(0) = &H6 'ÉèÖÃµØÖ·

send_uart

End Sub

Private Sub Form_Load()


'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

COM_Combo.AddItem "COM1", 0
COM_Combo.AddItem "COM2", 1
COM_Combo.AddItem "COM3", 2
COM_Combo.AddItem "COM4", 3
COM_Combo.AddItem "COM5", 4
COM_Combo.AddItem "COM6", 5
COM_Combo.AddItem "COM7", 6
COM_Combo.AddItem "COM8", 7
COM_Combo.AddItem "COM9", 8
COM_Combo.AddItem "COM10", 9
COM_Combo.ListIndex = 0

Combo_mul.AddItem "X0", 0
Combo_mul.AddItem "X1", 1
Combo_mul.AddItem "X2", 2
Combo_mul.AddItem "X3", 3
Combo_mul.AddItem "X4", 4
Combo_mul.AddItem "X5", 5
Combo_mul.AddItem "X6", 6
Combo_mul.AddItem "X7", 7
Combo_mul.AddItem "X8", 8
Combo_mul.AddItem "X9", 9
Combo_mul.AddItem "X10", 10
Combo_mul.AddItem "X11", 11
Combo_mul.AddItem "X12", 12
Combo_mul.AddItem "X13", 13
Combo_mul.AddItem "X14", 14
Combo_mul.AddItem "X15", 15
Combo_mul.AddItem "X16", 16
Combo_mul.AddItem "X17", 17
Combo_mul.AddItem "X18", 18
Combo_mul.AddItem "X19", 19
Combo_mul.AddItem "X20", 20
Combo_mul.AddItem "X21", 21
Combo_mul.AddItem "X22", 22
Combo_mul.AddItem "X23", 23
Combo_mul.AddItem "X24", 24
Combo_mul.AddItem "X25", 25
Combo_mul.AddItem "X26", 26
Combo_mul.AddItem "X27", 27
Combo_mul.AddItem "X28", 28
Combo_mul.AddItem "X29", 29
Combo_mul.AddItem "X30", 30
Combo_mul.ListIndex = 12


Combo_ic.AddItem "AD9852", 0
Combo_ic.AddItem "AD9854", 1

Combo_ic.ListIndex = 1

Combo_mode.AddItem "Single tone", 0
Combo_mode.AddItem "FSK", 1
Combo_mode.AddItem "Ramped FSK", 2
Combo_mode.AddItem "Chrip", 3
Combo_mode.AddItem "BPSK", 4
Combo_mode.ListIndex = 0

Combo_lang.AddItem "¼òÌåÖÐÎÄ", 0
Combo_lang.AddItem "·±ówÖÐÎÄ", 1
Combo_lang.AddItem "ENGLISH", 2
Combo_lang.ListIndex = 0

Form1.Caption = logo_en
Label_com_state.Caption = "´®¿Ú¹Ø±Õ"
Command_com_opened.Caption = "´ò¿ª´®¿Ú"
Command_com_closed.Caption = "¹Ø±Õ´®¿Ú"

Slider1.Enabled = False
Slider2.Enabled = False


End Sub

Private Sub MSComm1_OnComm()

uart_buf = uart_buf + MSComm1.Input

End Sub

Private Sub Slider1_Change()

Dim temp As Long

If MSComm1.PortOpen = False Then
  Exit Sub
End If

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If

ad9852_w(0) = &H8 'µØÖ·

ad9852_w(1) = Slider1.Value Mod 256   'ÏÈ·¢ËÍµÍÎ»

ad9852_w(2) = Fix(Slider1.Value / 256)
ad9852_w(3) = &H0
ad9852_w(4) = &H0
ad9852_w(5) = &H0
ad9852_w(6) = &H0

send_uart

End Sub

Private Sub TabStrip_mode_Click()

End Sub

Private Sub Slider2_Change()

Dim temp As Long

If MSComm1.PortOpen = False Then
  Exit Sub
End If

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If

ad9852_w(0) = &H9 'µØÖ·

ad9852_w(1) = Slider2.Value Mod 256   'ÏÈ·¢ËÍµÍÎ»

ad9852_w(2) = Fix(Slider2.Value / 256)
ad9852_w(3) = &H0
ad9852_w(4) = &H0
ad9852_w(5) = &H0
ad9852_w(6) = &H0

send_uart
End Sub

Private Sub Timer1_Timer()

timer1_count = timer1_count + 1
If uart_buf Like "*K*" Or timer1_count > 25 Then
Timer1.Enabled = False
'Command2_Click
uart_buf = ""
Else
Timer1.Enabled = True
End If

End Sub

Private Sub send_uart()
Dim temp As Long


'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

temp = ad9852_w(0)
temp = temp + ad9852_w(1)
temp = temp + ad9852_w(2)
temp = temp + ad9852_w(3)
temp = temp + ad9852_w(4)
temp = temp + ad9852_w(5)
temp = temp + ad9852_w(6)
temp = temp + 1
ad9852_w(7) = temp Mod 256

If Len(Hex(ad9852_w(0))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(0))
Else
  write_ee = write_ee + Hex(ad9852_w(0))
End If

If Len(Hex(ad9852_w(1))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(1))
Else
  write_ee = write_ee + Hex(ad9852_w(1))
End If

If Len(Hex(ad9852_w(2))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(2))
Else
  write_ee = write_ee + Hex(ad9852_w(2))
End If

If Len(Hex(ad9852_w(3))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(3))
Else
  write_ee = write_ee + Hex(ad9852_w(3))
End If

If Len(Hex(ad9852_w(4))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(4))
Else
  write_ee = write_ee + Hex(ad9852_w(4))
End If

If Len(Hex(ad9852_w(5))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(5))
Else
  write_ee = write_ee + Hex(ad9852_w(5))
End If

If Len(Hex(ad9852_w(6))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(6))
Else
  write_ee = write_ee + Hex(ad9852_w(6))
End If

If Len(Hex(ad9852_w(7))) = 1 Then
  write_ee = write_ee + "0" + Hex(ad9852_w(7))
Else
  write_ee = write_ee + Hex(ad9852_w(7))
End If

uart_buf = ""

MSComm1.Output = write_ee + "*"

End Sub

Private Sub config_dds()
Dim temp As Long


'/*==========================================================
'//  function:    AD9854 DDS°å¿ØÖÆ³ÌÐò
'//  Parameter:
'//  return:
'//  date:       2010/7/30
'//  note:
'//  write:      Ð»¹¤  technicxie@126.com
'//ÌÔ±¦£º         http://item.taobao.com/item.htm?spm=a230r.1.14.13.zig0JF&id=9044735744
'==========================================================*/

If MSComm1.PortOpen = False Then
  Exit Sub
End If

If Check_WE.Value = 1 Then
write_ee = "$WE"
Else
write_ee = "$WR"
End If

ad9852_w(0) = &H7 'µØÖ·

If Check_amp.Value = 1 Then
ad9852_w(1) = &H60    'ÏÈ·¢ËÍµÍÎ»
Else
ad9852_w(1) = &H40    'ÏÈ·¢ËÍµÍÎ»
End If

temp = Combo_mode.ListIndex  'ÉèÖÃ¹¤×÷Ä£Ê½
temp = temp * 2
ad9852_w(2) = temp


If Check_triangle.Value = Checked Then
ad9852_w(2) = ad9852_w(2) Or &H20
End If

ad9852_w(2) = ad9852_w(2) Or &H80

If Combo_mul.ListIndex = 0 Or Combo_mul.ListIndex = 1 Then 'ÉèÖÃ±¶ÆµÊýÖµ
  ad9852_w(3) = &H20
Else
  ad9852_w(3) = Combo_mul.ListIndex
End If

If Val(Text_std.Text) * Combo_mul.ListIndex > 200 Then 'ÆµÂÊ¸ßÓÚ200M£¬´ò¿ªÏàÓ¦ÉèÖÃ
  ad9852_w(3) = ad9852_w(3) + &H40
End If

ad9852_w(4) = &H0

ad9852_w(5) = &H0
ad9852_w(6) = &H0

send_uart

End Sub
