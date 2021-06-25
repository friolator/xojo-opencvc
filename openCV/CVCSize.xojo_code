#tag Class
Protected Class CVCSize
	#tag Method, Flags = &h0
		Function Area() As Integer
		  Return CVCSizeArea(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AspectRatio() As Double
		  Return CVCSizeAspectRatio(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(width as Double, height as Double)
		  mHandle=CVCSizeCreate(CType(round(width), int32), CType(round(height), Integer))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(width as integer, height as integer)
		  mHandle=CVCSizeCreate(width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(h as Ptr)
		  mHandle=h
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(sz as size)
		  mHandle=CVCSizeCreate(CType(round(sz.Width), int32), CType(round(sz.Height), int32))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeArea Lib LibOpenCVC (h as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeAspectRatio Lib LibOpenCVC (h as Ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeCreate Lib LibOpenCVC (w as integer, h as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeEmpty Lib LibOpenCVC (h as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCSizeFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeHeight Lib LibOpenCVC (p as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeWidth Lib LibOpenCVC (p as Ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCSizeFree(mHandle)
		  mHandle=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mHandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Height() As Int32
		  Return CVCSizeHeight(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEmpty() As Boolean
		  Return CVCSizeEmpty(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Width() As int32
		  Return CVCSizeWidth(mHandle)
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
