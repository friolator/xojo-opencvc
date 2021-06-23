#tag Module
Protected Module HighGui
	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCdestroyAllWindows Lib LibOpenCVC ()
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCimshow Lib LibOpenCVC (windowName as CString, image as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCwaitKey Lib LibOpenCVC (delay as Int32) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub DestroyAllWindows()
		  CVCdestroyAllWindows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub imgShow(name as String, image as CVCMat)
		  CVCimshow(name, image.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub waitKey(delay as UInt32)
		  call CVCwaitKey(delay)
		End Sub
	#tag EndMethod


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
End Module
#tag EndModule
