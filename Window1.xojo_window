#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   496
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   744863743
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   644
   Begin DesktopImageViewer ImageViewer1
      Active          =   False
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   456
      Image           =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   604
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
      Begin MonCanvas Canvas1
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DragPicture     =   0
         Enabled         =   True
         Height          =   436
         Index           =   -2147483648
         InitialParent   =   "ImageViewer1"
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         OrigPicture     =   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   30
         Transparent     =   True
         Visible         =   True
         Width           =   584
      End
   End
   Begin Timer statusTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   2000
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopLabel lbStatus
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   34
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   474
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   498
   End
   Begin DesktopPopupMenu pmViewSize
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   544
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   474
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub MenuBarSelected()
		  If HasPicture Then
		    ToolsInvert.Enabled = True
		    ToolsReset.Enabled = True
		    ToolsGreyscale.Enabled = True
		    ToolsRotateLeft.Enabled = True
		    ToolsRotateRight.Enabled = True
		    ToolsHorizontalMirror.Enabled = True
		    ToolsVerticalMirror.Enabled = True
		    ToolsScaledownbyhalf.Enabled = True
		  End If
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Me.Left = 0
		  Me.Top = 53
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  
		  If (Canvas1.Width < p.Width) Or (Canvas1.Height < p.Height) Then
		    Dim r0, r1 As Double
		    Dim x As Integer
		    r0 = Canvas1.Width / p.Width
		    r1 = Canvas1.Height / p.Height
		    If r1 < r0 Then r0 = r1
		    x = (r0 * 10) -1
		    If x < 0 Then x = 0
		    pmViewSize.SelectedRowIndex = x
		  End If
		  
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditCopy() As Boolean Handles EditCopy.Action
		  If Canvas1.Backdrop = Nil Then
		    Beep
		    LogStatus "No image available..."
		    Return True
		  End If
		  
		  Dim c As New Clipboard
		  c.Picture = Canvas1.Backdrop
		  c.Close()
		  LogStatus "Image copied to clipboard."
		  Return True
		  
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditPaste() As Boolean Handles EditPaste.Action
		  Dim c As New Clipboard
		  If c.PictureAvailable Then
		    Dim myPicture As Picture
		    myPicture = c.Picture ' get the picture
		    lastFI = SpecialFolder.Temporary.Child("Clipboard.png")
		    If lastFI.Exists Then lastFI.Remove()
		    HasPicture = True
		    myPicture.Save(lastFI, myPicture.SaveAsPNG)
		    Self.Title = "Clipboard"+Str(myPicture.Width)+"x"+Str(myPicture.Height)
		    ProcessImage()
		  Else
		    LogStatus "Clipboard doesn't contain any Picture!"
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Tools4Greys() As Boolean Handles Tools4Greys.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p.FourGreys()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsAddText() As Boolean Handles ToolsAddText.Action
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsGreyscale() As Boolean Handles ToolsGreyscale.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p.Greyscale()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsHorizontalMirror() As Boolean Handles ToolsHorizontalMirror.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p.Hmirror()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsInvert() As Boolean Handles ToolsInvert.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p.invert()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsReset() As Boolean Handles ToolsReset.Action
		  processImage()
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsRotate180() As Boolean Handles ToolsRotate180.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p.Rotate180()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsRotateLeft() As Boolean Handles ToolsRotateLeft.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p = p.Rotate90ccw()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsRotateRight() As Boolean Handles ToolsRotateRight.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p = p.Rotate90cw()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsScaledownbyhalf() As Boolean Handles ToolsScaledownbyhalf.Action
		  Dim p As Picture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p = Canvas1.OrigPicture.ScaleDownByHalf()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  Self.Title = "Image"+Str(Canvas1.Backdrop.Width)+"x"+Str(Canvas1.Backdrop.Height)
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ToolsVerticalMirror() As Boolean Handles ToolsVerticalMirror.Action
		  Dim p As Picture
		  p = Canvas1.OrigPicture
		  Dim t0, t1 As Double
		  t0 = System.Microseconds 
		  p.Vmirror()
		  t1 = System.Microseconds - t0
		  LogStatus Format(t1, "###,###")+" µs"
		  Canvas1.Backdrop = ReformatPicture(p)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub LogStatus(status As String)
		  lbStatus.Text = status
		  statusTimer.RunMode = Timer.RunModes.Single
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessImage()
		  If lastFI = Nil Then Return
		  
		  Dim p As Picture
		  
		  p = Picture.Open(lastFI)
		  If p = Nil Then Return
		  
		  Self.Title = lastFI.Name
		  
		  If (Canvas1.Width < p.Width) Or (Canvas1.Height < p.Height) Then
		    Dim r0, r1 As Double
		    Dim x As Integer
		    r0 = Canvas1.Width / p.Width
		    r1 = Canvas1.Height / p.Height
		    If r1 < r0 Then r0 = r1
		    x = r0 * 10
		    pmViewSize.SelectedRowIndex = x
		    ViewSize = (x+1) * 10
		  End If
		  
		  Canvas1.Backdrop = ReformatPicture(p)
		  Canvas1.Refresh()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReformatPicture(p As Picture) As Picture
		  If p = Nil Then Return Nil
		  
		  Dim w0, w1, h0, h1 As Integer
		  w0 = p.Width
		  h0 = p.Height
		  w1 = w0 * ViewSize / 100
		  h1 = h0 * ViewSize / 100
		  Canvas1.OrigPicture = New Picture(w0, h0)
		  Canvas1.OrigPicture.Graphics.DrawPicture(p, 0, 0)
		  p = New Picture(w1, h1)
		  p.Graphics.DrawPicture(Canvas1.OrigPicture, 0, 0, w1, h1, 0, 0, w0, h0)
		  Return p
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResizeImage(p As Picture, maxWidth As Integer, maxHeight As Integer) As Picture
		  Dim pw, ph, newH, newW As Integer
		  
		  pw = p.Width
		  ph = p.Height
		  
		  If pw <= maxWidth And ph <= maxHeight Then Return p
		  
		  Dim q As Picture
		  Dim r0, r1 As Double
		  
		  r0 = pw / maxWidth
		  r1 = ph / maxHeight
		  
		  If r1 > r0 Then r0 = r1
		  
		  newW = pw / r0
		  newH = ph / r0
		  
		  q = New Picture(newW, newH)
		  q.Graphics.DrawPicture(p, 0, 0, newW, newH, 0, 0, pw, ph)
		  If newH > Canvas1.Height Then
		    newH = Canvas1.Height
		    // Let's redraw the image with max Canvas1.Height
		    Dim nq As Picture
		    nq = New Picture(newW, newH)
		    nq.Graphics.DrawPicture(q, 0, 0)
		    Return nq
		  Else
		    Return q
		  End If
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		HasPicture As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		lastFI As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ViewSize As Integer = 100
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Opening()
		  Var imgType As New FileType
		  imgType.Name = "images/all"
		  imgType.Extensions = "jpg;jpeg;png;bmp"
		  
		  Me.AcceptFileDrop(imgType)
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  If Not obj.FolderItemAvailable Then
		    Return
		  End If
		  lastFI = obj.FolderItem
		  ToolsInvert.Enabled = True
		  HasPicture = True
		  
		  ProcessImage()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events statusTimer
	#tag Event
		Sub Action()
		  lbStatus.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbStatus
	#tag Event
		Sub Opening()
		  Me.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmViewSize
	#tag Event
		Sub Opening()
		  Dim i As Integer
		  
		  For i = 1 to 20
		    me.AddRow Str(i*10)+"%"
		  Next
		  Me.SelectedRowIndex = 9
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  ViewSize = (me.SelectedRowIndex+1) * 10
		  Canvas1.Backdrop = ReformatPicture(Canvas1.OrigPicture)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Windows Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasPicture"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ViewSize"
		Visible=false
		Group="Behavior"
		InitialValue="100"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
