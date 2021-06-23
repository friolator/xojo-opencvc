#tag Class
Protected Class CVCCascadeClassifier
	#tag Method, Flags = &h0
		Sub Constructor()
		  handle=CVCCascadeClassifierCreate
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCCascadeClassifierCreate Lib LibOpenCVC () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCCascadeClassifierDetectMultiScale Lib LibOpenCVC (h as Ptr, image as Ptr, rects as Ptr, scale as Double, minNeighbors as Integer, flags as Integer, minSize as Ptr, maxSize as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCCascadeClassifierFree Lib LibOpenCVC (h as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCCascadeClassifierLoad Lib LibOpenCVC (h as Ptr, path as CString) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  CVCCascadeClassifierFree(handle)
		  handle=Nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DetectMultiScale(image as CVCMat, rects as CVCRectVector, scaleFactor as Double, minNeighbors as integer, flags as integer, minSize as CVCSize, maxSize as CVCSize)
		  CVCCascadeClassifierDetectMultiScale(handle, image.handle, rects.handle, scaleFactor, minNeighbors, flags, minSize.handle, maxSize.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(f as FolderItem) As Boolean
		  If f=Nil Or Not f.Exists Or f.IsFolder Or Not f.IsReadable Then Return False
		  Return CVCCascadeClassifierLoad(handle, f.NativePath)
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
