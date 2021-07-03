#tag Class
Protected Class CVCMatVector
	#tag Method, Flags = &h0
		Sub Add(mat as CVCMat)
		  CVCMatVectorPushBack(mHandle, mat.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mHandle=CVCMatVectorCreate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As UInteger
		  Return CVCMatVectorSize(mHandle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatVectorAt Lib LibOpenCVC (h as Ptr, index as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatVectorCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCMatVectorFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCMatVectorPushBack Lib LibOpenCVC (h as Ptr, mat as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMatVectorSize Lib LibOpenCVC (h as Ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCMatVectorFree(mHandle)
		  mHandle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  return mHandle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowAt(index as int32) As CVCMat
		  If index>=Count Then 
		    Raise New OutOfBoundsException
		  End If
		  Var c As New CVCMat(CVCMatVectorAt(mHandle, index))
		  Return c
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mHandle As Ptr
	#tag EndProperty


End Class
#tag EndClass
