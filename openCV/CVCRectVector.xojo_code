#tag Class
Protected Class CVCRectVector
	#tag Method, Flags = &h0
		Sub Add(rect as cvcRect)
		  CVCRectVectorPushBack(handle, rect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(theRect as rect)
		  Var cRect As cvcRect
		  cRect.x=CType(theRect.Left, Integer)
		  cRect.y=CType(theRect.Top, Integer)
		  cRect.width=CType(theRect.Width, Integer)
		  cRect.height=CType(theRect.Height, Integer)
		  CVCRectVectorPushBack(handle, cRect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  handle=CVCRectVectorCreate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As UInteger
		  Return CVCRectVectorSize(handle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectVectorAt Lib libName (h as Ptr, index as integer) As CVCRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectVectorCreate Lib libName () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectVectorFree Lib libName (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectVectorPushBack Lib libName (h as Ptr, rect as cvcRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectVectorSize Lib libName (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCRectVectorFree(handle)
		  handle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAt(index as integer) As CVCRect
		  Var c As CVCRect
		  c= CVCRectVectorAt(handle, index)
		  Var m As MemoryBlock=c.StringValue(True)
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit)) or  (TargetIOS and (Target64Bit))
		Private Function RowAt(index as UInteger) As Rect
		  Var cRect As cvcRect= CVCRectVectorAt(handle, index)
		  Return new Rect(cRect.x, cRect.y, cRect.width, cRect.height)
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
