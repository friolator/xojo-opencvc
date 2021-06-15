#tag Class
Protected Class CVCMat
	#tag Method, Flags = &h0
		Sub Constructor()
		  handle=CVCMatCreate()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(h as Ptr)
		  handle=h
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatCreate Lib libName () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCMatFree Lib libName (handle as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatHeight Lib libName (handle as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatRoi Lib libName (mat as Ptr, r as cvcRect) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatWidth Lib libName (handle as Ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCMatFree(handle)
		  handle=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Height() As integer
		  Return CVCMatHeight(handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Roi(theRect as CVCRect) As CVCMat
		  Var h As Ptr=CVCMatRoi(handle, theRect)
		  Return new CVCMat(h)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Roi(theRect as rect) As CVCMat
		  Var r As cvcRect
		  r.x=theRect.Left
		  r.y=theRect.Top
		  r.width=theRect.Width
		  r.height=theRect.Height
		  
		  Var h As Ptr=CVCMatRoi(handle, r)
		  Return new CVCMat(h)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Width() As integer
		  Return CVCMatWidth(handle)
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
