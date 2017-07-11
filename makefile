
# Use these for MS VC (by Fizick)
CXX=cl.exe
CXXFLAGS= /MT /LD /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" 

LINK32=link.exe
LINK32FLAGS= /dll /nologo

# Resource compiler. 
RC=rc.exe /d "WIN32"

descratch.dll: descratch.obj descratch.res
	$(LINK32) $(LINK32FLAGS) descratch.obj descratch.res /out:descratch.dll

descratch.obj: descratch.cpp
	$(CXX) $(CXXFLAGS) descratch.cpp -c

descratch.res: descratch.rc
	$(RC) descratch.rc
