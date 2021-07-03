#tag Window
Begin Window wCore
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   432
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Core function samples"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin Canvas Canvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   328
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   True
      Visible         =   True
      Width           =   560
   End
   Begin Slider Slider1
      AllowAutoDeactivate=   True
      AllowLiveScrolling=   False
      Enabled         =   True
      Height          =   23
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   288
      LineStep        =   1
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumValue    =   100
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TickMarkStyle   =   0
      Tooltip         =   ""
      Top             =   17
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   100
   End
   Begin PushButton bSplit
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "bSplit"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   392
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton bCallAction
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "DoIt"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   500
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   17
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PopupMenu FunctionToCall
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "AbsDiff\nAdd\nAddWeighted\nBitwiseAnd\nBitwiseNot\nBitwiseOr\nBitwiseXor\nSwap\nDivide"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   18
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   256
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  coreResources=New Dictionary
		  Var fr As FolderItem=SpecialFolder.Resource("coresample")
		  For Each ff As FolderItem In fr.Children
		    Var ffile() As String=ff.Name.Split(".")
		    If ffile.Count>1 Then ffile.RemoveAt(ffile.LastIndex)
		    coreResources.Value(String.FromArray(ffile, ".").Lowercase)=ff.NativePath
		  Next
		  
		  imageResources=New Dictionary
		  fr=SpecialFolder.Resource("images")
		  For Each ff As FolderItem In fr.Children
		    Var ffile() As String=ff.Name.Split(".")
		    If ffile.Count>1 Then ffile.RemoveAt(ffile.LastIndex)
		    imageResources.Value(String.FromArray(ffile, ".").Lowercase)=ff.NativePath
		  Next
		  'Var k() As Variant=imageResources.Keys
		  'For i As Integer=0 To k.LastIndex
		  'sampleImage.AddRow k(i).StringValue.Titlecase
		  'sampleImage.RowTagAt(i)=k(i).StringValue
		  'Next
		  'If sampleImage.LastRowIndex>-1 Then sampleImage.SelectedRowIndex=0
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function loadFromCore(resName as String) As FolderItem
		  Var path As String=coreResources.Lookup(resName.Lowercase, "")
		  If path.IsEmpty Then Return Nil
		  
		  Var f As FolderItem
		  Try
		    f=New FolderItem(path, FolderItem.PathModes.Native)
		  Catch
		    f=Nil
		  End Try
		  If f<>Nil Then
		    If f.Exists And Not f.IsFolder And f.IsReadable Then 
		      Return f
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function loadFromImages(resName as String) As FolderItem
		  Var path As String=imageResources.Lookup(resName.Lowercase, "")
		  If path.IsEmpty Then Return Nil
		  
		  Var f As FolderItem
		  Try
		    f=New FolderItem(path, FolderItem.PathModes.Native)
		  Catch
		    f=Nil
		  End Try
		  If f<>Nil Then
		    If f.Exists And Not f.IsFolder And f.IsReadable Then 
		      Return f
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testAbsDiff()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    
		    openCV.Core.AbsDiff(images(0), images(1), images(2))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testAdd()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    
		    openCV.Core.Add(images(0), images(1), images(2))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testAddWeighted()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    Var alpha As Double=Slider1.Value/Slider1.MaximumValue
		    Var beta As Double=1-alpha
		    openCV.Core.AddWeighted(images(0), alpha, images(1), beta, 0.0, images(2))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testBitwiseAnd()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    
		    openCV.Core.BitwiseAnd(images(0), images(1), images(2))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testBitwiseNot()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    
		    openCV.Core.BitwiseNot(images(0), images(1))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testBitwiseOr()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    
		    openCV.Core.BitwiseOr(images(0), images(1), images(2))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testBitwiseXor()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    images.add New openCV.CVCMat
		    
		    openCV.Core.BitwiseXor(images(0), images(1), images(2))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testDivide()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imread(pTest.NativePath, openCV.ImReadModes.Unchanged) 
		    images.add New openCV.CVCMat
		    openCV.Core.Divide(images(0), images(1), images(2))
		    
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub testSwap()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    images.Add openCV.Codecs.imRead(pTest.NativePath, openCV.ImReadModes.Unchanged)
		    
		    openCV.Core.Swap(images(0), images(1))
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private coreResources As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private imageResources As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private images() As openCV.CVCMat
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If images.Count=0 Then Return
		  Var ht, wt As Double
		  Var p() As Picture
		  For i As Integer=0 To images.LastIndex
		    p.Add images(i).image1
		    wt=wt+p(i).Width
		    ht=max(ht, p(i).Height)
		  Next
		  
		  Var s As Double=min(g.Width/wt, g.Height/ht)
		  If s>1.0 Then s=1.0
		  Var x As Double
		  For i As Integer=0 To p.LastIndex
		    Var w As Double=p(i).Width*s
		    Var h As Double=p(i).Height*s
		    g.DrawPicture p(i), x, 0, w, h, 0, 0, p(i).Width, p(i).Height
		    x=x+w
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bSplit
	#tag Event
		Sub Action()
		  Var pLogo As FolderItem=loadFromCore("logo")
		  Var pTest As FolderItem=loadFromCore("Test")
		  If pLogo<>Nil And pTest<>Nil Then
		    images.RemoveAll
		    images.Add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    'images.Add new openCV.CVCMat
		    'Var matV As New openCV.CVCMatVector
		    'matV.Add New openCV.CVCMat
		    'matV.Add New openCV.CVCMat
		    'matV.Add New openCV.CVCMat
		    'matV.Add New openCV.CVCMat
		    
		    
		    'openCV.Core.Split(images(0), matV)
		    Var matv2 As New openCV.CVCMatVector
		    matv2.add openCV.Codecs.imread(pLogo.NativePath, openCV.ImReadModes.Unchanged) 
		    matv2.Add openCV.Codecs.imread(pTest.NativePath, openCV.ImReadModes.Unchanged) 
		    Var n As Integer=matv2.Count-1
		    Var p() As Picture
		    For i As Integer=0 To n
		      Var m As openCV.CVCMat=matv2.RowAt(i)
		      Var w As Integer=m.Width
		      Var h As Integer=m.Height
		      //var b as Boolean=m.
		      p.Add m.image1
		      //images.add matv.RowAt(i)
		    Next
		    Canvas1.Invalidate
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bCallAction
	#tag Event
		Sub Action()
		  Select Case functionToCall.SelectedRow
		  Case "AbsDiff"
		    testAbsDiff
		  Case "Add"
		    testAdd
		  Case "AddWeighted"
		    testAddWeighted
		  Case "BitwiseAnd"
		    testBitwiseAnd
		  Case "BitwiseNot"
		    testBitwiseNot
		  Case "BitwiseOr"
		    testBitwiseOr
		  Case "BitwiseXor"
		    testBitwiseXor
		  Case "Swap"
		    testSwap
		  Case "Divide"
		    testDivide
		  End Select
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
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
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
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
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
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
