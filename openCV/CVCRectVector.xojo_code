#tag Class
Protected Class CVCRectVector
	#tag Method, Flags = &h0
		Sub Add(rect as cvcRect)
		  CVCRectVectorPushBack(mHandle, rect.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(rect as CVCRectStructure)
		  Var rr As New CVCRect(rect)
		  CVCRectVectorPushBack(handle, rr.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(theRect as rect)
		  Var r As New CVCRect(theRect)
		  CVCRectVectorPushBack(mHandle, r.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mHandle=CVCRectVectorCreate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As UInteger
		  Return CVCRectVectorSize(mHandle)
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

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit)) or  (TargetIOS and (Target64Bit))
		Attributes( deprecated ) Private Declare Sub CVCRectVectorPushBack Lib LibOpenCVC (h as Ptr, byref rect as CVCRectStructure)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCRectVectorPushBack Lib LibOpenCVC (h as Ptr, rect as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCRectVectorSize Lib LibOpenCVC (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCRectVectorFree(mHandle)
		  mHandle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  return mHandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( deprecated )  Function RectAt(index as Int32) As Rect
		  'Var cRect As cvcRect= CVCRectVectorAt(handle, index)
		  'Return new Rect(cRect.x, cRect.y, cRect.width, cRect.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAt(index as int32) As CVCRect
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Var c As New CVCRect(CVCRectVectorAt(mHandle, index))
		  Return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAts(index as int32) As CVCRectStructure
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Var c As CVCRectStructure
		  Var p As Ptr=CVCRectVectorAt(mHandle, index)
		  If p<>Nil Then
		    Var m As MemoryBlock=p
		    c=p.CVCRectStructure(0)
		  End If
		  Return c
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
