#tag Module
Protected Module Core
	#tag Method, Flags = &h1
		Protected Sub add(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, mask as CVCMat, dtype as integer)
		  CVCadd(src1.handle, src2.handle, dst.handle, mask.handle, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub addWeighted(src1 as CVCMat, alpha as double, src2 as CVCMat, beta as double, gamma as double, dst as CVCMat, dtype as integer)
		  CVCaddWeighted(src1.handle, alpha, src2.handle, beta, gamma, dst.handle, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub batchDistance(src1 as CVCMat, src2 as CVCMat, dist as CVCMat, dtype as Integer, nidx as CVCMat, normType as integer, K as integer, mask as CVCMat, update as integer, crosscheck as Boolean)
		   CVCbatchDistance(src1.handle, src2.handle, dist.handle, dtype, nidx.handle, normType, K, mask.handle, update, crosscheck)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function borderInterpolate(p as integer, len as integer, borderType as integer) As Integer
		  return CVCborderInterpolate(p,len,borderType)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub convertFp16(src1 as CVCMat, dst as CVCMat)
		  CVCconvertFp16(src1.handle, dst.handle )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub convertScaleAbs(src1 as CVCMat, dst as CVCMat, alpha as double, beta as double)
		  CVCconvertScaleAbs(src1.handle, dst.handle, alpha,  beta )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function countNonZero(src as CVCMat) As Integer
		  return CVCcountNonZero(src.handle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCadd Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, mask as ptr, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCaddWeighted Lib LibOpenCVC (src1 as Ptr, alpha as double, src2 as Ptr, beta as double, gamma as double, dst as ptr, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCbatchDistance Lib LibOpenCVC (src1 as ptr, src2 as ptr, dist as ptr, dtype as integer, nidx as ptr, normType as integer, K as integer, mask as ptr, update as integer, crosscheck as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCborderInterpolate Lib LibOpenCVC (p as integer, len as integer, borderType as Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCconvertFp16 Lib LibOpenCVC (src1 as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCconvertScaleAbs Lib LibOpenCVC (src1 as Ptr, dst as ptr, alpha as double, beta as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCcountNonZero Lib LibOpenCVC (src as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCdivide Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, scale as double, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCfindNonZero Lib LibOpenCVC (src as Ptr, idx as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCflip Lib LibOpenCVC (src as Ptr, dest as Ptr, flipCode as int32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCLUT Lib LibOpenCVC (src1 as Ptr, lut as ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmeanStdDev Lib LibOpenCVC (src as Ptr, mean as Ptr, stddev as Ptr, mask as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmerge Lib LibOpenCVC (mv as Ptr, count as uinteger, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCminMaxIdx Lib LibOpenCVC (src as Ptr, minVal as double, maxVal as double, minIdx as integer, maxIdx as integer, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmultiply Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, scale as double, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCnorm Lib LibOpenCVC (src1 as ptr, normType as integer, mask as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCPSNR Lib LibOpenCVC (src1 as ptr, src2 as ptr, R as Double) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCreduce Lib LibOpenCVC (src as Ptr, dst as ptr, dimension as integer, rtype as integer, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCscaleAdd Lib LibOpenCVC (src1 as Ptr, alpha as double, src2 as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsubtract Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, mask as ptr, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCswap Lib LibOpenCVC (a as Ptr, b as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub divide(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, scale as double, dtype as integer)
		  CVCdivide(src1.handle, src2.handle, dst.handle, scale, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub findNonZero(src as CVCMat, idx as CVCMat)
		  CVCfindNonZero(src.handle, idx.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub flip(src as CVCMat, dest as CVCMat, flipCode as int32)
		  CVCflip(src.handle, dest.handle, flipCode)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LUT(src1 as CVCMat, lut as CVCMat, dst as CVCMat)
		  CVCLUT(src1.handle, lut.handle, dst.handle )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub meanStdDev(src as CVCMat, mean as CVCMat, stddev as CVCMat, mask as CVCMat)
		   CVCmeanStdDev(src.handle, mean.handle, stddev.handle, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub merge(mv as CVCMat, count as uinteger, dst as CVCMat)
		  CVCmerge(mv.handle, count, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub minMaxIdx(src as CVCMat, minVal as double, maxVal as double, minIdx as Integer, maxIdx as Integer, mask as CVCMat)
		  CVCminMaxIdx(src.handle, minVal, maxVal, minIdx, maxIdx, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub multiply(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, scale as double, dtype as integer)
		  CVCmultiply(src1.handle, src2.handle, dst.handle, scale, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function norm(src as CVCMat, normType as integer, mask as CVCMat) As Double
		  return CVCnorm(src.handle, normType, mask.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PSNR(src1 as CVCMat, src2 as CVCMat, R as Double) As Double
		  return CVCPSNR(src1.handle, src2.handle, R)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub reduce(src as CVCMat, dst as CVCMat, dimension as integer, rtype as integer, dtype as integer)
		  CVCreduce(src.handle, dst.handle, dimension, rtype, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub scaleAdd(src1 as CVCMat, alpha as double, src2 as CVCMat, dst as CVCMat)
		  CVCscaleAdd(src1.handle, alpha, src2.handle, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub subtract(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, mask as CVCMat, dtype as integer)
		  CVCsubtract(src1.handle, src2.handle, dst.handle, mask.handle, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub swap(a as CVCMat, b as CVCMat)
		  CVCswap(a.handle, b.handle)
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
