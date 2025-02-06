#tag Class
Protected Class CVCInputArray
	#tag Method, Flags = &h0
		Sub Constructor()
		  mHandle=CVCInputArrayCreate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(mv as CVCMatRefVector)
		  mhandle=CVCInputArrayCreateFromCVCMatRefVector(mv.Handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function CVCInputArrayCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function CVCInputArrayCreateFromCVCMatRefVector Lib LibOpenCVC (h as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub CVCInputArrayFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCInputArrayFree(mHandle)
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
