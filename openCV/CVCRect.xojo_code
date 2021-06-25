#tag Class
Protected Class CVCRect
	#tag Method, Flags = &h0
		Function Area() As integer
		  Return CVCRectArea(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(r as CVCRectStructure)
		  mHandle=CVCRectCreate(r.x, r.y, r.width, r.height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(x as integer, y as Integer, w as Integer, h as Integer)
		  mHandle=CVCRectCreate(x, y, w, h)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(h as Ptr)
		  mHandle=h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(r as Rect)
		  mHandle=CVCRectCreate(CType(round(r.Left), Integer), CType(round(r.top), Integer), ctype(round(r.Width), integer), CType(round(r.Height), integer))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectArea Lib LibOpenCVC (h as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectCreate Lib LibOpenCVC (x as int32, y as int32, w as Int32, h as Int32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectEmpty Lib LibOpenCVC (h as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectHeight Lib LibOpenCVC (h as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectWidth Lib LibOpenCVC (h as Ptr) As integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectX Lib LibOpenCVC (h as Ptr) As integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectY Lib LibOpenCVC (h as Ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mHandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Height() As integer
		  Return CVCRectHeight(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEmpty() As Boolean
		  Return CVCRectEmpty(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LeftTop() As CVCPoint
		  Var p As CVCPoint
		  p.x=X
		  p.y=Y
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function operator_convert() As CVCRectStructure
		  Var r As CVCRectStructure
		  r.x=X
		  r.y=Y
		  r.width=Width
		  r.height=Height
		  Return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function operator_convert() As Rect
		  Return new Rect(X, Y, Width, Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RightBottom() As CVCPoint
		  Var p As CVCPoint
		  p.x=X+Width
		  p.y=Y+Height
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toString() As String
		  Return X.ToString+", "+Y.ToString+" x "+Width.ToString+", "+Height.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Width() As integer
		  Return CVCRectWidth(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function X() As integer
		  Return CVCRectX(mHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Y() As integer
		  Return CVCRectY(mHandle)
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
