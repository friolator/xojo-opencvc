#tag Class
Protected Class CVCRectVector
	#tag Method, Flags = &h0
		Sub Add(byRef rect as CVCRectStructure)
		  CVCRectVectorPushBack(handle, rect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(rect as cvcRect)
		  CVCRectVectorPushBack(handle, rect.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(theRect as rect)
		  Var r As New CVCRect(theRect)
		  CVCRectVectorPushBack(handle, r.Handle)
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
		Private Declare Function CVCRectVectorAt Lib LibOpenCVC (h as Ptr, index as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectVectorCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectVectorFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectVectorPushBack Lib LibOpenCVC (h as Ptr, byref rect as CVCRectStructure)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectVectorPushBack Lib LibOpenCVC (h as Ptr, rect as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectVectorSize Lib LibOpenCVC (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCRectVectorFree(handle)
		  handle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RectAt(index as Int32) As Rect
		  'Var cRect As cvcRect= CVCRectVectorAt(handle, index)
		  'Return new Rect(cRect.x, cRect.y, cRect.width, cRect.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAt(index as int32) As CVCRect
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Var c As New CVCRect(CVCRectVectorAt(handle, index))
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAts(index as int32) As CVCRectStructure
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Var c As CVCRectStructure
		  Var p As Ptr=CVCRectVectorAt(handle, index)
		  If p<>Nil Then
		    var m as MemoryBlock=p
		    c=p.CVCRectStructure(0)
		  End If
		  Return c
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
