#tag Class
Protected Class CVCSize
	#tag Method, Flags = &h0
		Function Area() As Integer
		  Return CVCSizeArea(handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AspectRatio() As Double
		  Return CVCSizeAspectRatio(handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(width as Double, height as Double)
		  handle=CVCSizeCreate(CType(width, Integer), CType(height, Integer))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(width as integer, height as Integer)
		  handle=CVCSizeCreate(width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(h as Ptr)
		  handle=h
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(sz as size)
		  handle=CVCSizeCreate(CType(sz.Width, Integer), CType(sz.Height, Integer))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeArea Lib libName (h as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeAspectRatio Lib libName (h as Ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeCreate Lib libName (w as integer, h as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCSizeEmpty Lib libName (h as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCSizeFree Lib libName (h as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCSizeFree(handle)
		  handle=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEmpty() As Boolean
		  Return CVCSizeEmpty(handle)
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
