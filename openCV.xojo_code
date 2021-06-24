#tag Module
Protected Module openCV
	#tag Method, Flags = &h0
		Function toCVCRectStructure(extends r as Rect) As CVCRectStructure
		  Var s As CVCRectStructure
		  s.x=CType(Round(r.Left), Int32)
		  s.y=CType(Round(r.top), Int32)
		  s.width=CType(Round(r.Width), Int32)
		  s.height=CType(Round(r.Height), Int32)
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toRect(extends r as CVCRectStructure) As Rect
		  Return new rect(r.x, r.y, r.width, r.height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toScalar(extends c as Color) As CVCScalar
		  Var s As CVCScalar
		  s.v0=c.Blue
		  s.v1=c.Green
		  s.v2=c.Red
		  s.v3=(255-c.Alpha)
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toString(extends p as CVCPoint) As String
		  Return p.x.ToString+", "+p.y.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toString(extends r as CVCRectStructure) As String
		  Return r.x.ToString+", "+r.y.ToString+" x "+r.width.ToString+", "+r.height.ToString
		End Function
	#tag EndMethod


	#tag Constant, Name = LibOpenCVC, Type = String, Dynamic = False, Default = \"openCv", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"@executable_path/../Frameworks/libOpenCVC.dylib"
	#tag EndConstant


	#tag Structure, Name = CVCPoint, Flags = &h1
		x as integer
		y as integer
	#tag EndStructure

	#tag Structure, Name = CVCPointf, Flags = &h1
		x as double
		y as double
	#tag EndStructure

	#tag Structure, Name = CVCRectStructure, Flags = &h0
		x as int32
		  y as int32
		  width as int32
		height as int32
	#tag EndStructure

	#tag Structure, Name = CVCScalar, Flags = &h0
		v0 as double
		  v1 as double
		  v2 as double
		v3 as double
	#tag EndStructure


	#tag Enum, Name = AdaptiveThresholdTypes, Type = Integer, Flags = &h1
		ThreshMeanC = 0
		ThreshGaussianC = 1
	#tag EndEnum

	#tag Enum, Name = BorderTypes, Type = Integer, Flags = &h1
		Constant = 0
		  Replicate = 1
		  Reflect = 2
		  Wrap = 3
		  Reflect101 = 4
		  Transparent = 5
		  Default  = 4
		Isolated = 16
	#tag EndEnum

	#tag Enum, Name = CmpTypes, Type = Integer, Flags = &h1
		Eq = 0
		  Gt = 1
		  Ge = 2
		  Lt = 3
		  Le = 4
		Ne = 5
	#tag EndEnum

	#tag Enum, Name = ColorConversionCodes, Type = Integer, Flags = &h1
		Bgr2bgra = 0
		  Rgb2rgba  = 0
		  Bgra2bgr = 1
		  Rgba2rgb  = 1
		  Bgr2rgba = 2
		  Rgb2bgra  = 2
		  Rgba2bgr = 3
		  Bgra2rgb  = 3
		  Bgr2rgb = 4
		  Rgb2bgr  = 4
		  Bgra2rgba = 5
		  Rgba2bgra  = 5
		  Bgr2gray = 6
		  Rgb2gray = 7
		  Gray2bgr = 8
		  Gray2rgb  = 8
		  Gray2bgra = 9
		  Gray2rgba  = 9
		  Bgra2gray = 10
		  Rgba2gray = 11
		  Bgr2bgr565 = 12
		  Rgb2bgr565 = 13
		  Bgr5652bgr = 14
		  Bgr5652rgb = 15
		  Bgra2bgr565 = 16
		  Rgba2bgr565 = 17
		  Bgr5652bgra = 18
		  Bgr5652rgba = 19
		  Gray2bgr565 = 20
		  Bgr5652gray = 21
		  Bgr2bgr555 = 22
		  Rgb2bgr555 = 23
		  Bgr5552bgr = 24
		  Bgr5552rgb = 25
		  Bgra2bgr555 = 26
		  Rgba2bgr555 = 27
		  Bgr5552bgra = 28
		  Bgr5552rgba = 29
		  Gray2bgr555 = 30
		  Bgr5552gray = 31
		  Bgr2xyz = 32
		  Rgb2xyz = 33
		  Xyz2bgr = 34
		  Xyz2rgb = 35
		  Bgr2ycrcb = 36
		  Rgb2ycrcb = 37
		  Ycrcb2bgr = 38
		  Ycrcb2rgb = 39
		  Bgr2hsv = 40
		  Rgb2hsv = 41
		  Bgr2lab = 44
		  Rgb2lab = 45
		  Bgr2luv = 50
		  Rgb2luv = 51
		  Bgr2hls = 52
		  Rgb2hls = 53
		  Hsv2bgr = 54
		  Hsv2rgb = 55
		  Lab2bgr = 56
		  Lab2rgb = 57
		  Luv2bgr = 58
		  Luv2rgb = 59
		  Hls2bgr = 60
		  Hls2rgb = 61
		  Bgr2hsvFull = 66
		  Rgb2hsvFull = 67
		  Bgr2hlsFull = 68
		  Rgb2hlsFull = 69
		  Hsv2bgrFull = 70
		  Hsv2rgbFull = 71
		  Hls2bgrFull = 72
		  Hls2rgbFull = 73
		  Lbgr2lab = 74
		  Lrgb2lab = 75
		  Lbgr2luv = 76
		  Lrgb2luv = 77
		  Lab2lbgr = 78
		  Lab2lrgb = 79
		  Luv2lbgr = 80
		  Luv2lrgb = 81
		  Bgr2yuv = 82
		  Rgb2yuv = 83
		  Yuv2bgr = 84
		  Yuv2rgb = 85
		  Yuv2rgbNv12 = 90
		  Yuv2bgrNv12 = 91
		  Yuv2rgbNv21 = 92
		  Yuv2bgrNv21 = 93
		  Yuv420sp2rgb  = 92
		  Yuv420sp2bgr  = 93
		  Yuv2rgbaNv12 = 94
		  Yuv2bgraNv12 = 95
		  Yuv2rgbaNv21 = 96
		  Yuv2bgraNv21 = 97
		  Yuv420sp2rgba  = 96
		  Yuv420sp2bgra  = 97
		  Yuv2rgbYv12 = 98
		  Yuv2bgrYv12 = 99
		  Yuv2rgbIyuv = 100
		  Yuv2bgrIyuv = 101
		  Yuv2rgbI420  = 100
		  Yuv2bgrI420  = 101
		  Yuv420p2rgb  = 98
		  Yuv420p2bgr  = 99
		  Yuv2rgbaYv12 = 102
		  Yuv2bgraYv12 = 103
		  Yuv2rgbaIyuv = 104
		  Yuv2bgraIyuv = 105
		  Yuv2rgbaI420  = 104
		  Yuv2bgraI420  = 105
		  Yuv420p2rgba  = 102
		  Yuv420p2bgra  = 103
		  Yuv2gray420 = 106
		  Yuv2grayNv21  = 106
		  Yuv2grayNv12  = 106
		  Yuv2grayYv12  = 106
		  Yuv2grayIyuv  = 106
		  Yuv2grayI420  = 106
		  Yuv420sp2gray  = 106
		  Yuv420p2gray  = 106
		  Yuv2rgbUyvy = 107
		  Yuv2bgrUyvy = 108
		  Yuv2rgbY422  = 107
		  Yuv2bgrY422  = 108
		  Yuv2rgbUynv  = 107
		  Yuv2bgrUynv  = 108
		  Yuv2rgbaUyvy = 111
		  Yuv2bgraUyvy = 112
		  Yuv2rgbaY422  = 111
		  Yuv2bgraY422  = 112
		  Yuv2rgbaUynv  = 111
		  Yuv2bgraUynv  = 112
		  Yuv2rgbYuy2 = 115
		  Yuv2bgrYuy2 = 116
		  Yuv2rgbYvyu = 117
		  Yuv2bgrYvyu = 118
		  Yuv2rgbYuyv  = 115
		  Yuv2bgrYuyv  = 116
		  Yuv2rgbYunv  = 115
		  Yuv2bgrYunv  = 116
		  Yuv2rgbaYuy2 = 119
		  Yuv2bgraYuy2 = 120
		  Yuv2rgbaYvyu = 121
		  Yuv2bgraYvyu = 122
		  Yuv2rgbaYuyv  = 119
		  Yuv2bgraYuyv  = 120
		  Yuv2rgbaYunv  = 119
		  Yuv2bgraYunv  = 120
		  Yuv2grayUyvy = 123
		  Yuv2grayYuy2 = 124
		  Yuv2grayY422  = 123
		  Yuv2grayUynv  = 123
		  Yuv2grayYvyu  = 124
		  Yuv2grayYuyv  = 124
		  Yuv2grayYunv  = 124
		  Rgba2mrgba = 125
		  Mrgba2rgba = 126
		  Rgb2yuvI420 = 127
		  Bgr2yuvI420 = 128
		  Rgb2yuvIyuv  = 127
		  Bgr2yuvIyuv  = 128
		  Rgba2yuvI420 = 129
		  Bgra2yuvI420 = 130
		  Rgba2yuvIyuv  = 129
		  Bgra2yuvIyuv  = 130
		  Rgb2yuvYv12 = 131
		  Bgr2yuvYv12 = 132
		  Rgba2yuvYv12 = 133
		  Bgra2yuvYv12 = 134
		  Bayerbg2bgr = 46
		  Bayergb2bgr = 47
		  Bayerrg2bgr = 48
		  Bayergr2bgr = 49
		  Bayerbg2rgb  = 48
		  Bayergb2rgb  = 49
		  Bayerrg2rgb  = 46
		  Bayergr2rgb  = 47
		  Bayerbg2gray = 86
		  Bayergb2gray = 87
		  Bayerrg2gray = 88
		  Bayergr2gray = 89
		  Bayerbg2bgrVng = 62
		  Bayergb2bgrVng = 63
		  Bayerrg2bgrVng = 64
		  Bayergr2bgrVng = 65
		  Bayerbg2rgbVng  = 64
		  Bayergb2rgbVng  = 65
		  Bayerrg2rgbVng  = 62
		  Bayergr2rgbVng  = 63
		  Bayerbg2bgrEa = 135
		  Bayergb2bgrEa = 136
		  Bayerrg2bgrEa = 137
		  Bayergr2bgrEa = 138
		  Bayerbg2rgbEa  = 137
		  Bayergb2rgbEa  = 138
		  Bayerrg2rgbEa  = 135
		  Bayergr2rgbEa  = 136
		  Bayerbg2bgra = 139
		  Bayergb2bgra = 140
		  Bayerrg2bgra = 141
		  Bayergr2bgra = 142
		  Bayerbg2rgba  = 141
		  Bayergb2rgba  = 142
		  Bayerrg2rgba  = 139
		  Bayergr2rgba  = 140
		ColorcvtMax = 143
	#tag EndEnum

	#tag Enum, Name = ColormapTypes, Type = Integer, Flags = &h1
		Autumn = 0
		  Bone = 1
		  Jet = 2
		  Winter = 3
		  Rainbow = 4
		  Ocean = 5
		  Summer = 6
		  Spring = 7
		  Cool = 8
		  Hsv = 9
		  Pink = 10
		  Hot = 11
		  Parula = 12
		  Magma = 13
		  Inferno = 14
		  Plasma = 15
		  Viridis = 16
		  Cividis = 17
		  Twilight = 18
		  TwilightShifted = 19
		  Turbo = 20
		Deepgreen = 21
	#tag EndEnum

	#tag Enum, Name = ConnectedComponentsAlgorithmsTypes, Type = integer, Flags = &h1
		CclDefault = -1
		  CclWu = 0
		  CclGrana = 1
		  CclBolelli = 2
		  CclSauf = 3
		  CclBbdt = 4
		CclSpaghetti = 5
	#tag EndEnum

	#tag Enum, Name = ConnectedComponentsTypes, Type = Integer, Flags = &h1
		CcStatLeft = 0
		  CcStatTop = 1
		  CcStatWidth = 2
		  CcStatHeight = 3
		CcStatArea = 4
	#tag EndEnum

	#tag Enum, Name = ContourApproximationModes, Type = Integer, Flags = &h1
		ChainApproxNone = 1
		  ChainApproxSimple = 2
		  ChainApproxTc89L1 = 3
		ChainApproxTc89Kcos = 4
	#tag EndEnum

	#tag Enum, Name = CovarFlags, Type = Integer, Flags = &h1
		Scrambled = 0
		  Normal = 1
		  UseAvg = 2
		  Scale = 4
		  Rows = 8
		Cols = 16
	#tag EndEnum

	#tag Enum, Name = DecompTypes, Type = Integer, Flags = &h1
		Lu = 0
		  Svd = 1
		  Eig = 2
		  Cholesky = 3
		  Qr = 4
		Normal = 16
	#tag EndEnum

	#tag Enum, Name = DftFlags, Type = Int16, Flags = &h1
		Inverse = 1
		  Scale = 2
		  Rows = 4
		  ComplexOutput = 16
		  RealOutput = 32
		  ComplexInput = 64
		  DctInverse  = 1
		DctRows  = 4
	#tag EndEnum

	#tag Enum, Name = DistanceTransformLabelTypes, Type = Int16, Flags = &h1
		LabelCcomp = 0
		LabelPixel = 1
	#tag EndEnum

	#tag Enum, Name = DistanceTransformMasks, Type = Int16, Flags = &h1
		Mask3 = 3
		  Mask5 = 5
		MaskPrecise = 0
	#tag EndEnum

	#tag Enum, Name = DistanceTypes, Type = Int16, Flags = &h1
		User = -1
		  L1 = 1
		  L2 = 2
		  C = 3
		  L12 = 4
		  Fair = 5
		  Welsch = 6
		Huber = 7
	#tag EndEnum

	#tag Enum, Name = FloodFillFlags, Type = Int16, Flags = &h1
		FixedRange  = 65536
		MaskOnly  = 131072
	#tag EndEnum

	#tag Enum, Name = GemmFlags, Type = Int16, Flags = &h1
		G1T = 1
		  G2T = 2
		G3T = 4
	#tag EndEnum

	#tag Enum, Name = GrabCutClasses, Type = Int16, Flags = &h1
		GcBgd = 0
		  GcFgd = 1
		  GcPrBgd = 2
		GcPrFgd = 3
	#tag EndEnum

	#tag Enum, Name = GrabCutModes, Type = Int16, Flags = &h1
		GcInitWithRect = 0
		  GcInitWithMask = 1
		  GcEval = 2
		GcEvalFreezeModel = 3
	#tag EndEnum

	#tag Enum, Name = HersheyFonts, Type = Int16, Flags = &h1
		FontSimplex = 0
		  FontPlain = 1
		  FontDuplex = 2
		  FontComplex = 3
		  FontTriplex = 4
		  FontComplexSmall = 5
		  FontScriptSimplex = 6
		  FontScriptComplex = 7
		FontItalic = 16
	#tag EndEnum

	#tag Enum, Name = HistCompMethods, Type = Int16, Flags = &h1
		HistcmpCorrel = 0
		  HistcmpChisqr = 1
		  HistcmpIntersect = 2
		  HistcmpBhattacharyya = 3
		  HistcmpHellinger  = 3
		  HistcmpChisqrAlt = 4
		HistcmpKlDiv = 5
	#tag EndEnum

	#tag Enum, Name = HoughModes, Type = Int16, Flags = &h1
		Standard = 0
		  Probabilistic = 1
		  MultiScale = 2
		  Gradient = 3
		GradientAlt = 4
	#tag EndEnum

	#tag Enum, Name = ImReadModes, Type = Int16, Flags = &h1
		Unchanged = -1
		  Grayscale = 0
		  Color = 1
		  Anydepth = 2
		  Anycolor = 4
		  LoadGdal = 8
		  ReducedGrayscale2 = 16
		  ReducedColor2 = 17
		  ReducedGrayscale4 = 32
		  ReducedColor4 = 33
		  ReducedGrayscale8 = 64
		  ReducedColor8 = 65
		IgnoreOrientation = 128
	#tag EndEnum

	#tag Enum, Name = ImWriteEXRCompressionFlags, Type = Int16, Flags = &h1
		ExrCompressionNo = 0
		  ExrCompressionRle = 1
		  ExrCompressionZips = 2
		  ExrCompressionZip = 3
		  ExrCompressionPiz = 4
		  ExrCompressionPxr24 = 5
		  ExrCompressionB44 = 6
		  ExrCompressionB44a = 7
		  ExrCompressionDwaa = 8
		ExrCompressionDwab = 9
	#tag EndEnum

	#tag Enum, Name = ImWriteEXRTypeFlags, Type = Int16, Flags = &h1
		ExrTypeHalf = 1
		ExrTypeFloat = 2
	#tag EndEnum

	#tag Enum, Name = ImWriteFlags, Type = Int16, Flags = &h1
		JpegQuality = 1
		  JpegProgressive = 2
		  JpegOptimize = 3
		  JpegRstInterval = 4
		  JpegLumaQuality = 5
		  JpegChromaQuality = 6
		  PngCompression = 16
		  PngStrategy = 17
		  PngBilevel = 18
		  PxmBinary = 32
		  ExrType = 48
		  ExrCompression = 49
		  WebpQuality = 64
		  PamTupletype = 128
		  TiffResunit = 256
		  TiffXdpi = 257
		  TiffYdpi = 258
		  TiffCompression = 259
		Jpeg2000CompressionX1000 = 272
	#tag EndEnum

	#tag Enum, Name = ImwritePAMFlags, Type = Int16, Flags = &h1
		PamFormatNull = 0
		  PamFormatBlackandwhite = 1
		  PamFormatGrayscale = 2
		  PamFormatGrayscaleAlpha = 3
		  PamFormatRgb = 4
		PamFormatRgbAlpha = 5
	#tag EndEnum

	#tag Enum, Name = ImWritePNGFlags, Type = Int16, Flags = &h1
		PngStrategyDefault = 0
		  PngStrategyFiltered = 1
		  PngStrategyHuffmanOnly = 2
		  PngStrategyRle = 3
		PngStrategyFixed = 4
	#tag EndEnum

	#tag Enum, Name = InterpolationFlags, Type = integer, Flags = &h1
		Nearest = 0
		  Linear = 1
		  Cubic = 2
		  Area = 3
		  Lanczos4 = 4
		  LinearExact = 5
		  NearestExact = 6
		  Max = 7
		  WarpFillOutliers = 8
		WarpInverseMap = 16
	#tag EndEnum

	#tag Enum, Name = InterpolationMasks, Type = Int16, Flags = &h1
		Bits = 5
		  Bits2  = 10
		  TabSize  = 32
		TabSize2  = 1024
	#tag EndEnum

	#tag Enum, Name = KmeansFlags, Type = Int16, Flags = &h1
		RandomCenters = 0
		  PpCenters = 2
		UseInitialLabels = 1
	#tag EndEnum

	#tag Enum, Name = LineSegmentDetectorModes, Type = Int16, Flags = &h1
		LsdRefineNone = 0
		  LsdRefineStd = 1
		LsdRefineAdv = 2
	#tag EndEnum

	#tag Enum, Name = LineTypes, Type = Integer, Flags = &h1
		Filled = -1
		  Line4 = 4
		  Line8 = 8
		lineAA = 16
	#tag EndEnum

	#tag Enum, Name = MarkerTypes, Type = Int16, Flags = &h1
		Cross = 0
		  TiltedCross = 1
		  Star = 2
		  Diamond = 3
		  Square = 4
		  TriangleUp = 5
		TriangleDown = 6
	#tag EndEnum

	#tag Enum, Name = MorphShapes, Type = Int16, Flags = &h1
		Rect = 0
		  Cross = 1
		Ellipse = 2
	#tag EndEnum

	#tag Enum, Name = MorphTypes, Type = Int16, Flags = &h1
		Erode = 0
		  Dilate = 1
		  Open = 2
		  Close = 3
		  Gradient = 4
		  Tophat = 5
		  Blackhat = 6
		Hitmiss = 7
	#tag EndEnum

	#tag Enum, Name = NormTypes, Type = Int16, Flags = &h1
		Inf = 1
		  L1 = 2
		  L2 = 4
		  L2sqr = 5
		  Hamming = 6
		  Hamming2 = 7
		  TypeMask = 7
		  Relative = 8
		Minmax = 32
	#tag EndEnum

	#tag Enum, Name = RectanglesIntersectTypes, Type = Int16, Flags = &h1
		IntersectNone = 0
		  IntersectPartial = 1
		IntersectFull = 2
	#tag EndEnum

	#tag Enum, Name = ReduceTypes, Type = Int16, Flags = &h1
		Sum = 0
		  Avg = 1
		  Max = 2
		Min = 3
	#tag EndEnum

	#tag Enum, Name = RetrievalModes, Type = Int16, Flags = &h1
		External = 0
		  List = 1
		  Ccomp = 2
		  Tree = 3
		Floodfill = 4
	#tag EndEnum

	#tag Enum, Name = ShapeMatchModes, Type = Int16, Flags = &h1
		ContoursMatchI1 = 1
		  ContoursMatchI2 = 2
		ContoursMatchI3 = 3
	#tag EndEnum

	#tag Enum, Name = SortFlags, Type = Int16, Flags = &h1
		EveryRow = 0
		  EveryColumn = 1
		  Ascending = 0
		Descending = 16
	#tag EndEnum

	#tag Enum, Name = SpecialFilter, Type = Int16, Flags = &h1
		Scharr = -1
	#tag EndEnum

	#tag Enum, Name = TemplateMatchModes, Type = Int16, Flags = &h1
		TmSqdiff = 0
		  TmSqdiffNormed = 1
		  TmCcorr = 2
		  TmCcorrNormed = 3
		  TmCcoeff = 4
		TmCcoeffNormed = 5
	#tag EndEnum

	#tag Enum, Name = TermCriteriaTypes, Type = Integer, Flags = &h1
		Count=1
		  MaxIter=1
		EPS=2
	#tag EndEnum

	#tag Enum, Name = ThresholdTypes, Type = Int16, Flags = &h1
		Binary = 0
		  BinaryInv = 1
		  Trunc = 2
		  Tozero = 3
		  TozeroInv = 4
		  Mask = 7
		  Otsu = 8
		Triangle = 16
	#tag EndEnum

	#tag Enum, Name = WarpPolarMode, Type = Int16, Flags = &h1
		PolarLinear = 0
		PolarLog = 256
	#tag EndEnum


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
