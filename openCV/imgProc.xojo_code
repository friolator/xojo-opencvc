#tag Module
Protected Module imgProc
	#tag Method, Flags = &h1
		Protected Sub CVCCanny(image as CVCMat, edges as CVCMat, threshold1 as Double, threshold2 as Double, apertureSize as integer, L2gradient as Boolean)
		  CVCCanny(image.handle, edges.handle, threshold1, threshold2, apertureSize, L2gradient)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CVCCanny(image as CVCMat, threshold1 as Double, threshold2 as Double, apertureSize as integer, L2gradient as Boolean) As CVCMat
		  Var edges As New CVCMat
		  CVCCanny(image.handle, edges.handle, threshold1, threshold2, apertureSize, L2gradient)
		  Return edges
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCCanny Lib LibOpenCVC (image as Ptr, edges as Ptr, threshold1 as Double, threshold2 as Double, apertureSize as integer, L2gradient as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CVCCvtColor(src as CVCMat, code as ColorConversionCodes, dstCn as Integer) As CVCMat
		  Var dest As New CVCMat
		  CVCcvtColor(src.handle, dest.handle, code, dstCn)
		  Return dest
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CVCCvtColor(src as CVCMat, dest as CVCMat, code as ColorConversionCodes, dstCn as Integer)
		  CVCcvtColor(src.handle, dest.handle, code, dstCn)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCcvtColor Lib LibOpenCVC (src as Ptr, dst as Ptr, code as ColorConversionCodes, dstCn as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub CVCGaussianBlur(mat as CVCMat, dest as CVCMat, sz as CVCSize, sigmaX as Double, sigmaY as Double, border as borderTypes)
		  CVCGaussianBlur(mat.handle, dest.handle, sz.handle, sigmaX, sigmaY, border)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CVCGaussianBlur(mat as CVCMat, sz as CVCSize, sigmaX as Double, sigmaY as Double, border as borderTypes) As CVCMat
		  Var dest As New CVCMat
		  CVCGaussianBlur(mat.handle, dest.handle, sz.handle, sigmaX, sigmaY, border)
		  Return dest
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCGaussianBlur Lib LibOpenCVC (mat As Ptr, dest As Ptr, ksize As Ptr, sigmaX As Double, sigmaY As Double, border As borderTypes)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function CVCgetGaborKernel(ksize as CVCSize, sigma as Double, theta as Double, lambda as Double, gamma as Double, psi as Double) As CVCMat
		  Var h As Ptr=CVCgetGaborKernel(ksize.handle, sigma, theta, lambda, gamma, psi, 6) //6 is typeCV64F
		  If h<>Nil Then
		    Return New CVCMat(h)
		  End If
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCgetGaborKernel Lib LibOpenCVC (ksize as Ptr, sigma as Double, theta as Double, lambda as Double, gamma as Double, psi as Double, type as Integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCrectangle Lib LibOpenCVC (img as Ptr, p1 as cvcPoint, p2 as cvcPoint, color as CVCScalar, thickness as integer, lineType as lineTypes, tipLength as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCrectangle2 Lib LibOpenCVC (img as Ptr, rect as ptr, color as CVCScalar, thickness as integer, lineType as lineTypes, tipLength as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub CVCresize(source as CVCMat, dest as CVCMat, dSize as CVCSize, fx as double, fy as double, interpolation as interpolationFlags)
		  
		  CVCresize(source.handle, dest.handle, dSize.handle, fx, fy, interpolation)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CVCresize(source as CVCMat, dSize as CVCSize, fx as double, fy as double, interpolation as interpolationFlags) As CVCMat
		  Var dest As New CVCMat
		  CVCresize(source.handle, dest.handle, dSize.handle, fx, fy, interpolation)
		  Return dest
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCresize Lib LibOpenCVC (source as Ptr, dest as Ptr, dSize as Ptr, fx as double, fy as double, interpolation as interpolationFlags)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub Rectangle(img as CVCMat, p1 as cvcPoint, p2 as cvcPoint, lineColor as cvcScalar, thickness as Integer, lineType as lineTypes, sh as integer)
		  CVCrectangle(img.handle, p1, p2, lineColor, thickness, lineType, sh)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Rectangle2(img as CVCMat, rct as ptr, lineColor as cvcScalar, thickness as Integer, lineType as lineTypes, sh as integer)
		  
		  CVCrectangle2(img.handle,  rct  , lineColor, thickness, lineType, sh)
		End Sub
	#tag EndMethod


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
End Module
#tag EndModule
