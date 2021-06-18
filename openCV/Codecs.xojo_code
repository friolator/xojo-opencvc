#tag Module
Protected Module Codecs
	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCimdecode Lib libName (buf as Ptr, flags as imReadModes) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCimencode Lib libName (fileName as CString, img as Ptr, buf as Ptr, params as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCimread Lib libName (fileName as CString, modes as imReadModes) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCimwrite Lib libName (fileName as CString, img as Ptr, params as Integer, pcount as integer) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function imdecode(m as MemoryBlock, flags as openCV.imReadModes) As CVCMat
		  Var c As New CVCUCharVector(m)
		  Var p As Ptr=CVCimdecode(c.handle, flags)
		  If p<>Nil Then
		    Return new CVCMat(p)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function imEncode(fileName as String, img as CVCMat, ParamArray params as Integer) As MemoryBlock
		  Var p As New CVCIntVector
		  For i As Integer=0 To params.lastIndex
		    p.add params(i)
		  Next
		  Var buf As New CVCUCharVector
		  If CVCimencode(fileName, img.Handle, buf.handle, p.Handle) Then
		    Var m As MemoryBlock=buf.data
		    Return m
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function imread(path as String, flags as openCV.imReadModes) As openCV.CVCMat
		  //Var flag16 As Int16=CType(flags, Int16)
		  Var p As Ptr=CVCimread(path, flags)
		  If p<>Nil Then 
		    Return New openCV.CVCMat(p)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function imwrite(path as String, mat as openCV.CVCMat) As Boolean
		  
		  Return CVCimwrite(path, mat.handle, 0, 0)
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
