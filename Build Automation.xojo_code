#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyMacOpenCVCLib
					AppliesTo = 0
					Architecture = 1
					Target = 0
					Destination = 2
					Subdirectory = 
					FolderItem = Li4vZXh0ZXJuYWwvbGliT3BlbkNWQy5keWxpYg==
				End
				Begin CopyFilesBuildStep copyMacEntitlments
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 4
					Subdirectory = 
					FolderItem = Li4vZXh0ZXJuYWwvYXBwbGljYXRpb24uZW50aXRsZW1lbnRz
				End
				Begin CopyFilesBuildStep copyData
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vZXh0ZXJuYWwvZGF0YS8=
					FolderItem = Li4vZXh0ZXJuYWwvaW1hZ2VzLw==
					FolderItem = Li4vZXh0ZXJuYWwvY29yZXNhbXBsZS8=
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				  macOSEntitlements={"App Sandbox":"False","Hardened Runtime":"False","Notarize":"False","UserEntitlements":""}
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyDLLs
					AppliesTo = 0
					Architecture = 1
					Target = 0
					Destination = 0
					Subdirectory = 
					FolderItem = Li4vZXh0ZXJuYWwvb3BlbmN2X3dvcmxkNDUyZC5kbGw=
					FolderItem = Li4vZXh0ZXJuYWwvT3BlbkNWQy5kbGw=
				End
				Begin CopyFilesBuildStep copyData1
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vZXh0ZXJuYWwvZGF0YS8=
					FolderItem = Li4vZXh0ZXJuYWwvaW1hZ2VzLw==
					FolderItem = Li4vZXh0ZXJuYWwvY29yZXNhbXBsZS8=
				End
			End
#tag EndBuildAutomation
