#tag Class
Protected Class CVCUCharVector
	#tag Method, Flags = &h0
		Sub Add(value as UInt8)
		  CVCUCharVectorPushBack(mhandle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mhandle=CVCUCharVectorCreate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(m as MemoryBlock)
		  mhandle=CVCUCharVectorCreate
		  Var n As Integer=m.Size-1
		  For i As Integer=0 To n
		    me.Add m.UInt8Value(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(h as Ptr)
		  mhandle=h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As UInteger
		  Return CVCUCharVectorSize(mhandle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorAt Lib LibOpenCVC (h as Ptr, index as UInteger) As UInt8
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorData Lib LibOpenCVC (h as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCUCharVectorFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCUCharVectorPushBack Lib LibOpenCVC (h as Ptr, value as UInt8)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorSize Lib LibOpenCVC (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Data() As MemoryBlock
		  Var p As Ptr=CVCUCharVectorData(mhandle)
		  If p<>Nil Then
		    Var m As MemoryBlock=p
		    Var mr As MemoryBlock=m.StringValue(0, Count)
		    Return mr
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCUCharVectorFree(mhandle)
		  mhandle=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mhandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAt(index as UInteger) As UInt8
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Return CVCUCharVectorAt(mhandle, index)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mhandle As Ptr
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
