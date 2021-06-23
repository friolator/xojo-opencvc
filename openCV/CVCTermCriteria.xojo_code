#tag Class
Protected Class CVCTermCriteria
	#tag Method, Flags = &h0
		Sub Constructor(type as TermCriteriaTypes, maxCount as integer, epsilon as Double)
		  handle=CVCTermCriteriaCreate(type, maxCount, epsilon)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCTermCriteriaCreate Lib LibOpenCVC (type as TermCriteriaTypes, maxCount as integer, epsilon as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCTermCriteriaFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCTermCriteriaIsValid Lib LibOpenCVC (h as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCTermCriteriaFree(handle)
		  handle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isValid() As Boolean
		  Return CVCTermCriteriaIsValid(handle)
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
