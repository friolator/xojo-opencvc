#tag Class
Protected Class CVCVideoCapture
	#tag Method, Flags = &h21
		Private Sub Constructor(h as Ptr)
		  mHandle=h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Create(index as Integer = 0) As CVCVideoCapture
		  #if true
		    // use this if you have not re-compiled the openCVC lib with the new function, yet:
		    if index <> 0 then break
		    Var h As Ptr = CVCVideoCaptureCreate()
		  #else
		    // Uses the new function added 03Aug2025:
		    Var h As Ptr = CVCVideoCaptureCreateWithIndex(index)
		  #endif
		  If h<>Nil Then
		    Return New CVCVideoCapture(h)
		  End If
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureCreateWithIndex Lib LibOpenCVC (index as Integer = 0) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCVideoCaptureFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureIsOpened Lib LibOpenCVC (h as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCVideoCaptureRead Lib LibOpenCVC (h as Ptr, mat as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCVideoCaptureFree(mHandle)
		  mHandle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isOpened() As Boolean
		  Return CVCVideoCaptureIsOpened(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function read(mat as CVCMat) As Boolean
		  Return CVCVideoCaptureRead(mHandle, mat.handle)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		mHandle As Ptr
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
