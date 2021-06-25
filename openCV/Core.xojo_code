#tag Module
Protected Module Core
	#tag Method, Flags = &h1
		Protected Sub absdiff(src1 as CVCMat, src2 as CVCMat, dst as CVCMat)
		  CVCabsdiff(src1.handle, src2.handle, dst.handle)
		End Sub
	#tag EndMethod

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
		Protected Sub bitwise_and(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, mask as CVCMat)
		  CVCbitwise_and(src1.handle, src2.handle, dst.handle, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub bitwise_not(src as CVCMat, dst as CVCMat, mask as CVCMat)
		  CVCbitwise_not(src.handle, dst.handle, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub bitwise_or(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, mask as CVCMat)
		  CVCbitwise_or(src1.handle, src2.handle, dst.handle, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub bitwise_xor(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, mask as CVCMat)
		  CVCbitwise_xor(src1.handle, src2.handle, dst.handle, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function borderInterpolate(p as integer, len as integer, borderType as integer) As Integer
		  return CVCborderInterpolate(p,len,borderType)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub calcCovarMatrix(samples as CVCMat, nsamples as Integer, covar as CVCMat, mean as CVCMat, flags as integer, type as integer)
		  CVCcalcCovarMatrix(samples.handle, nsamples, covar.handle, mean.handle, flags, type)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub cartToPolar(x as CVCMat, y as CVCMat, magnitude as CVCMat, angle as CVCMat, angleInDegrees as boolean)
		  CVCcartToPolar(x.handle,  y.handle, magnitude.handle, angle.handle, angleInDegrees)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub compare(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, cmpop as integer)
		  CVCcompare(src1.handle, src2.handle, dst.handle, cmpop)
		End Sub
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
		Protected Sub copyTo(src as CVCMat, dst as CVCMat, mask as CVCMat)
		  CVCcopyTo(src.handle, dst.handle, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function countNonZero(src as CVCMat) As Integer
		  return CVCcountNonZero(src.handle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCabsdiff Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr)
	#tag EndExternalMethod

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
		Private Declare Sub CVCbitwise_and Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCbitwise_not Lib LibOpenCVC (src as Ptr, dst as ptr, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCbitwise_or Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCbitwise_xor Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCborderInterpolate Lib LibOpenCVC (p as integer, len as integer, borderType as Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCcalcCovarMatrix Lib LibOpenCVC (samples as Ptr, nsamples as integer, covar as Ptr, mean as ptr, flags as integer, type as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCcartToPolar Lib LibOpenCVC (x as ptr, y as ptr, magnitude as Ptr, angle as ptr, angleInDegrees as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCcompare Lib LibOpenCVC (src1 as Ptr, src2 as ptr, dst as ptr, cmpop as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCconvertFp16 Lib LibOpenCVC (src1 as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCconvertScaleAbs Lib LibOpenCVC (src1 as Ptr, dst as ptr, alpha as double, beta as double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCcopyTo Lib LibOpenCVC (src as Ptr, dst as ptr, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCcountNonZero Lib LibOpenCVC (src as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCdct Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCdeterminant Lib LibOpenCVC (mtx as Ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCdft Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer, nonzeroRows as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCdivide Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, scale as double, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCeigen Lib LibOpenCVC (src as Ptr, eigenvalues as Ptr, eigenvectors as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCeigenNonSymmetric Lib LibOpenCVC (src as Ptr, eigenvalues as Ptr, eigenvectors as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCexp Lib LibOpenCVC (src as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCextractChannel Lib LibOpenCVC (src as Ptr, mean as Ptr, coi as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCfindNonZero Lib LibOpenCVC (src as Ptr, idx as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCflip Lib LibOpenCVC (src as Ptr, dest as Ptr, flipCode as int32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCgemm Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, alpha as double, src3 as ptr, beta as double, dst as ptr, flags as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCgetOptimalDFTSize Lib LibOpenCVC (vecsize as integer) As integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCidct Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCidft Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer, nonzeroRows as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCinRange Lib LibOpenCVC (src as Ptr, upperb as ptr, lowerb as ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCinvert Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVClog Lib LibOpenCVC (src as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCLUT Lib LibOpenCVC (src1 as Ptr, lut as ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmagnitude Lib LibOpenCVC (x as Ptr, y as ptr, magnitude as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCMahalanobis Lib LibOpenCVC (v1 as Ptr, v2 as Ptr, icovar as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmax Lib LibOpenCVC (src1 as Ptr, src2 as ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmeanStdDev Lib LibOpenCVC (src as Ptr, mean as Ptr, stddev as Ptr, mask as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmerge Lib LibOpenCVC (mv as Ptr, count as uinteger, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmin Lib LibOpenCVC (src1 as Ptr, src2 as ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCminMaxIdx Lib LibOpenCVC (src as Ptr, minVal as double, maxVal as double, minIdx as integer, maxIdx as integer, mask as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmixChannels Lib LibOpenCVC (src as Ptr, nsrcs as uinteger, dst as ptr, ndsts as uinteger, fromTo as integer, npairs as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmulSpectrums Lib LibOpenCVC (a as Ptr, b as Ptr, c as ptr, flags as integer, conjB as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmultiply Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, scale as double, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCmulTransposed Lib LibOpenCVC (src as Ptr, dst as ptr, aTa as boolean, delta as ptr, scale as Double, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCnorm Lib LibOpenCVC (src1 as ptr, normType as integer, mask as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCPCABackProject Lib LibOpenCVC (data as Ptr, mean as Ptr, eigenvectors as ptr, result as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCPCAProject Lib LibOpenCVC (data as Ptr, mean as Ptr, eigenvectors as ptr, result as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCperspectiveTransform Lib LibOpenCVC (src as Ptr, dst as Ptr, m as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCphase Lib LibOpenCVC (x as Ptr, y as ptr, angle as ptr, angleInDegrees as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCpolarToCart Lib LibOpenCVC (magnitude as Ptr, angle as ptr, x as ptr, y as ptr, angleInDegrees as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCpow Lib LibOpenCVC (src as Ptr, power as double, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCPSNR Lib LibOpenCVC (src1 as ptr, src2 as ptr, R as Double) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCreduce Lib LibOpenCVC (src as Ptr, dst as ptr, dimension as integer, rtype as integer, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCrepeat Lib LibOpenCVC (src as Ptr, ny as integer, nx as integer, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCrotate Lib LibOpenCVC (src as Ptr, dst as ptr, rotateCode as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCscaleAdd Lib LibOpenCVC (src1 as Ptr, alpha as double, src2 as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsetRNGSeed Lib LibOpenCVC (seed as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCsolve Lib LibOpenCVC (src1 as Ptr, src2 as ptr, dst as Ptr, flags as integer) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCsolveCubic Lib LibOpenCVC (coeffs as Ptr, roots as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CVCsolvePoly Lib LibOpenCVC (coeffs as Ptr, roots as Ptr, maxIters as integer) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsort Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsortIdx Lib LibOpenCVC (src as Ptr, dst as Ptr, flags as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsplit Lib LibOpenCVC (src as Ptr, mvbegin as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsqrt Lib LibOpenCVC (src as Ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCsubtract Lib LibOpenCVC (src1 as Ptr, src2 as Ptr, dst as ptr, mask as ptr, dtype as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCSVBackSubst Lib LibOpenCVC (w as Ptr, u as Ptr, vt as ptr, rhs as ptr, dst as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCSVDecomp Lib LibOpenCVC (src as Ptr, w as Ptr, u as ptr, vt as ptr, flags as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCswap Lib LibOpenCVC (a as Ptr, b as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCtransform Lib LibOpenCVC (src as Ptr, dst as Ptr, m as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CVCtranspose Lib LibOpenCVC (src as Ptr, dst as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub dct(src as CVCMat, dst as CVCMat, flags as integer)
		  CVCdct(src.handle, dst.handle, flags)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function determinant(mtx as CVCMat) As Double
		  return CVCdeterminant(mtx.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub dft(src as CVCMat, dst as CVCMat, flags as integer, nonzeroRows as integer)
		  CVCdft(src.handle, dst.handle, flags, nonzeroRows)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub divide(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, scale as double, dtype as integer)
		  CVCdivide(src1.handle, src2.handle, dst.handle, scale, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function eigen(src as CVCMat, eigenvalues as CVCMat, eigenvectors as CVCMat) As Boolean
		  return CVCeigen(src.handle, eigenvalues.handle, eigenvectors.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub eigenNonSymmetric(src as CVCMat, eigenvalues as CVCMat, eigenvectors as CVCMat)
		  CVCeigenNonSymmetric(src.handle, eigenvalues.handle, eigenvectors.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub exp(src as CVCMat, dst as CVCMat)
		  CVCexp(src.handle,  dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub extractChannel(src as CVCMat, dst as CVCMat, coi as integer)
		  CVCextractChannel(src.handle, dst.handle, coi)
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
		Protected Sub gemm(src1 as CVCMat, src2 as CVCMat, alpha as Double, src3 as CVCMat, beta as Double, dst as CVCMat, flags as integer)
		  CVCgemm(src1.handle, src2.handle, alpha, src3.handle, beta, dst.handle, flags)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOptimalDFTSize(vecsize as integer) As integer
		  return CVCgetOptimalDFTSize(vecsize)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub idct(src as CVCMat, dst as CVCMat, flags as integer)
		  CVCidct(src.handle, dst.handle, flags)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub idft(src as CVCMat, dst as CVCMat, flags as integer, nonzeroRows as integer)
		  CVCidft(src.handle, dst.handle, flags, nonzeroRows)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub inRange(src as CVCMat, lowerb as CVCMat, upperb as CVCMat, dst as CVCMat)
		  CVCinRange(src.handle, lowerb.handle, upperb.handle, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function invert(src as CVCMat, dst as CVCMat, flags as Integer) As Double
		  return CVCinvert(src.handle, dst.handle, flags)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub log(src as CVCMat, dst as CVCMat)
		  CVClog(src.handle,  dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LUT(src1 as CVCMat, lut as CVCMat, dst as CVCMat)
		  CVCLUT(src1.handle, lut.handle, dst.handle )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub magnitude(x as CVCMat, y as CVCMat, magnitude as CVCMat)
		  CVCmagnitude(x.handle,  y.handle, magnitude.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Mahalanobis(v1 as CVCMat, v2 as CVCMat, icovar as CVCMat) As Double
		  return CVCMahalanobis(v1.handle, v2.handle, icovar.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub max(src1 as CVCMat, src2 as CVCMat, dst as CVCMat)
		  CVCmax(src1.handle, src2.handle, dst.handle)
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
		Protected Sub min(src1 as CVCMat, src2 as CVCMat, dst as CVCMat)
		  CVCmin(src1.handle, src2.handle, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub minMaxIdx(src as CVCMat, minVal as double, maxVal as double, minIdx as Integer, maxIdx as Integer, mask as CVCMat)
		  CVCminMaxIdx(src.handle, minVal, maxVal, minIdx, maxIdx, mask.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function mixChannels(src as CVCMat, nsrcs as uinteger, dst as CVCMat, ndsts as uinteger, fromTo as integer, npairs as uinteger) As uinteger
		  CVCmixChannels(src.handle, nsrcs, dst.handle, ndsts, fromTo, npairs)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub mulSpectrums(a as CVCMat, b as CVCMat, c as cvcmat, flags as integer, conjB as Boolean)
		  CVCmulSpectrums(a.handle, b.handle, c.handle, flags, conjB)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub multiply(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, scale as double, dtype as integer)
		  CVCmultiply(src1.handle, src2.handle, dst.handle, scale, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub mulTransposed(src as CVCMat, dst as CVCMat, aTa as boolean, delta as CVCMat, scale as Double, dtype as Integer)
		  CVCmulTransposed(src.handle, dst.handle, aTa, delta.handle, scale, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function norm(src as CVCMat, normType as integer, mask as CVCMat) As Double
		  return CVCnorm(src.handle, normType, mask.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PCABackProject(data as CVCMat, mean as CVCMat, eigenvectors as CVCMat, result as CVCMat)
		  CVCPCABackProject(data.handle, mean.handle, eigenvectors.handle, result.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PCAProject(data as CVCMat, mean as CVCMat, eigenvectors as CVCMat, result as CVCMat)
		  CVCPCAProject(data.handle, mean.handle, eigenvectors.handle, result.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub perspectiveTransform(src as CVCMat, dst as CVCMat, m as CVCMat)
		  CVCperspectiveTransform(src.handle, dst.handle, m.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub phase(x as CVCMat, y as CVCMat, angle as CVCMat, angleInDegrees as boolean)
		  CVCphase(x.handle,  y.handle, angle.handle, angleInDegrees)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub polarToCart(magnitude as CVCMat, angle as CVCMat, x as CVCMat, y as CVCMat, angleInDegrees as boolean)
		  CVCpolarToCart(magnitude.handle,  angle.handle, x.handle, y.handle, angleInDegrees)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub pow(src as CVCMat, power as double, dst as CVCMat)
		  CVCpow(src.handle,  power, dst.handle)
		End Sub
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
		Protected Sub repeat(src as CVCMat, ny as Integer, nx as integer, dst as CVCMat)
		  CVCrepeat(src.handle, ny, nx, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub rotate(src as CVCMat, dst as CVCMat, rotateCode as Integer)
		  CVCrotate(src.handle, dst.handle, rotateCode)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub scaleAdd(src1 as CVCMat, alpha as double, src2 as CVCMat, dst as CVCMat)
		  CVCscaleAdd(src1.handle, alpha, src2.handle, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setRNGSeed(seed as integer)
		   CVCsetRNGSeed(seed)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function solve(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, flags as Integer) As Boolean
		  return CVCsolve(src1.handle, src2.handle, dst.handle, flags)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function solveCubic(coeffs as CVCMat, roots as CVCMat) As Integer
		  return CVCsolveCubic(coeffs.handle, roots.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function solvePoly(coeffs as CVCMat, roots as CVCMat, maxIters as integer) As Double
		  return CVCsolvePoly(coeffs.handle, roots.handle, maxiters)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sort(src as CVCMat, dst as CVCMat, flags as Integer)
		  CVCsort(src.handle, dst.handle, flags)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sortIdx(src as CVCMat, dst as CVCMat, flags as Integer)
		  CVCsortIdx(src.handle, dst.handle, flags)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub split(src as CVCMat, mvbegin as CVCMat)
		  CVCsplit(src.handle, mvbegin.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub sqrt(src as CVCMat, dst as CVCMat)
		  CVCsqrt(src.handle,  dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub subtract(src1 as CVCMat, src2 as CVCMat, dst as CVCMat, mask as CVCMat, dtype as integer)
		  CVCsubtract(src1.handle, src2.handle, dst.handle, mask.handle, dtype)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SVBackSubst(w as CVCMat, u as CVCMat, vt as CVCMat, rhs as CVCMat, dst as CVCMat)
		  CVCSVBackSubst(w.handle, u.handle, vt.handle, rhs.handle, dst.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SVDecomp(src as CVCMat, w as CVCMat, u as CVCMat, vt as CVCMat, flags as integer)
		  CVCSVDecomp(src.handle, w.handle, u.handle, vt.handle, flags)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub swap(a as CVCMat, b as CVCMat)
		  CVCswap(a.handle, b.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub transform(src as CVCMat, dst as CVCMat, m as CVCMat)
		  CVCtransform(src.handle, dst.handle, m.handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub transpose(src as CVCMat, dst as CVCMat)
		  CVCtranspose(src.handle, dst.handle)
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
