#tag Class
Protected Class CVCUCharVector
	#tag Method, Flags = &h0
		Sub Add(value as UInt8)
		  CVCUCharPushBack(handle, value)
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
		Function Count() As UInteger
		  Return CVCUCharVectorSize(handle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCUCharPushBack Lib libName (h as Ptr, value as UInt8)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorAt Lib libName (h as Ptr, index as UInteger) As UInt8
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorCreate Lib libName () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorData Lib libName (h as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCUCharVectorFree Lib libName (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCUCharVectorSize Lib libName (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Data() As MemoryBlock
		  Var p As Ptr=CVCUCharVectorData(handle)
		  If p<>Nil Then
		    Var m As MemoryBlock=p
		    Var mr As MemoryBlock=m.StringValue(0, Count)
		    Return mr
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCUCharVectorFree(handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function rowAt(index as UInteger) As UInt8
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Return CVCUCharVectorAt(handle, index)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mhandle
			End Get
		#tag EndGetter
		handle As Ptr
	#tag EndComputedProperty

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
