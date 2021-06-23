#tag Module
Protected Module Core
	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCflip Lib LibOpenCVC (src as Ptr, dest as Ptr, flipCode as int32)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub CVCswap(a as CVCMat, b as CVCMat)
		  CVCswap(a.handle, b.handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCswap Lib LibOpenCVC (a as Ptr, b as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub flip(src as CVCMat, dest as CVCMat, flipCode as int32)
		  CVCflip(src.handle, dest.handle, flipCode)
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
