#tag Module
Protected Module Codecs
	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCimread Lib libName (fileName as CString, modes as imReadModes) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function imread(path as String, flags as openCV.imReadModes) As openCV.CVCMat
		  //Var flag16 As Int16=CType(flags, Int16)
		  Var p As Ptr=CVCimread(path, flags)
		  If p<>Nil Then 
		    Return New openCV.CVCMat(p)
		  End If
		End Function
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
