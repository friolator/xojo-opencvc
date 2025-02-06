#tag Class
Protected Class CVCMatRefVector
	#tag Method, Flags = &h0
		Sub Add(mat as CVCMat)
		  CVCMatRefVectorPushBack(mHandle, mat.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mHandle=CVCMatRefVectorCreate
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function CVCMatRefVectorCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub CVCMatRefVectorFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub CVCMatRefVectorPushBack Lib LibOpenCVC (h as Ptr, mat as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCMatRefVectorFree(mHandle)
		  mHandle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  return mHandle
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
