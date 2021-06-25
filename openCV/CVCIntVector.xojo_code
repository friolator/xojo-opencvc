#tag Class
Protected Class CVCIntVector
	#tag Method, Flags = &h0
		Sub Add(value as int32)
		  CVCIntVectorPushBack(mHandle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mHandle=CVCIntVectorCreate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As UInteger
		  Return CVCIntVectorSize(mHandle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCIntVectorAt Lib LibOpenCVC (h as Ptr, index as UInteger) As int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCIntVectorCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCIntVectorData Lib LibOpenCVC (h as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCIntVectorFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCIntVectorPushBack Lib LibOpenCVC (h as Ptr, value as int32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCIntVectorSize Lib LibOpenCVC (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Data() As MemoryBlock
		  Var p As Ptr=CVCIntVectorData(mHandle)
		  If p<>Nil Then
		    Var m As MemoryBlock=p
		    Var mr As MemoryBlock=m.StringValue(0, Count*4)
		    Return mr
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCIntVectorFree(mHandle)
		  mHandle=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mHandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAt(index as UInteger) As int32
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Return CVCIntVectorAt(mHandle, index)
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
