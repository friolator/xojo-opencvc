#tag Class
Protected Class CVCVideoCapture
	#tag Method, Flags = &h21
		Private Sub Constructor(h as Ptr)
		  handle=h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Create() As CVCVideoCapture
		  Var h As Ptr=CVCVideoCaptureCreate
		  If h<>Nil Then
		    Return New CVCVideoCapture(h)
		  End If
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureCreate Lib libName () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCVideoCaptureFree Lib libName (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureIsOpened Lib libName (h as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureRead Lib libName (h as Ptr, mat as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCVideoCaptureFree(handle)
		  handle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isOpened() As Boolean
		  Return CVCVideoCaptureIsOpened(handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function read(mat as CVCMat) As Boolean
		  Return CVCVideoCaptureRead(handle, mat.handle)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		handle As Ptr
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
