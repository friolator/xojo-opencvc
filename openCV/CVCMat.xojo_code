#tag Class
Protected Class CVCMat
	#tag Method, Flags = &h0
		Sub Constructor()
		  mHandle=CVCMatCreate()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(rows as integer, cols as integer, type as integer)
		  mHandle = CVCMatCreate1(rows,cols,type)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(rows as integer, cols as integer, type as integer, image as ptr)
		  mHandle = CVCMatCreate2(rows,cols,type,image)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(h as Ptr)
		  mHandle=h
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function CVCMatCreate1 Lib LibOpenCVC (rows as integer, cols as integer, type as integer) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function CVCMatCreate2 Lib LibOpenCVC (rows as integer, cols as integer, type as integer, img as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCMatFree Lib LibOpenCVC (handle as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatHeight Lib LibOpenCVC (handle as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatRoi Lib LibOpenCVC (mat as Ptr, r as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatWidth Lib LibOpenCVC (handle as Ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCMatFree(mHandle)
		  mHandle=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mHandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Height() As integer
		  Return CVCMatHeight(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function image() As Picture
		  Var f As FolderItem=FolderItem.TemporaryFile
		  f.Name=f.Name+".png"
		  Var ok As Boolean=Codecs.imwrite(f.NativePath, Me)
		  If ok Then
		    Var p As Picture=Picture.Open(f)
		    If f.Exists Then f.Remove
		    
		    Return p
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function image1() As Picture
		  Var m As MemoryBlock=openCV.Codecs.imEncode(".png", Me)// CType(openCV.ImWriteFlags.PngCompression, Integer), 9)
		  Var p As Picture=Picture.FromData(m)
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Roi(theRect as CVCRect) As CVCMat
		  Var h As Ptr=CVCMatRoi(mHandle, theRect.Handle)
		  Return new CVCMat(h)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Roi(theRect as rect) As CVCMat
		  Var r As New CVCRect(theRect)
		  
		  Var h As Ptr=CVCMatRoi(mHandle, r.Handle)
		  Return New CVCMat(h)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Width() As integer
		  Return CVCMatWidth(mHandle)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mHandle As Ptr
	#tag EndProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
