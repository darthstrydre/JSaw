##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=JSaw
ConfigurationName      :=Debug
WorkspacePath          := "C:\bin\src\Werkspace"
ProjectPath            := "C:\bin\src\Werkspace\JSaw"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Tobias.Hackstock
Date                   :=06/01/2016
CodeLitePath           :="C:\bin\CodeLite"
LinkerName             :=C:/bin/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/bin/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="JSaw.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/bin/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/bin/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/bin/TDM-GCC-64/bin/g++.exe
CC       := C:/bin/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/bin/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\bin\CodeLite
Objects0=$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_face.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_vertex.cpp$(ObjectSuffix) $(IntermediateDirectory)/objTester_list.cpp$(ObjectSuffix) $(IntermediateDirectory)/objTester_obj_parser.cpp$(ObjectSuffix) $(IntermediateDirectory)/objTester_objLoader.cpp$(ObjectSuffix) $(IntermediateDirectory)/objTester_string_extra.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix): src/main.cpp $(IntermediateDirectory)/src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.cpp$(DependSuffix): src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.cpp$(DependSuffix) -MM "src/main.cpp"

$(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix): src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix) "src/main.cpp"

$(IntermediateDirectory)/src_face.cpp$(ObjectSuffix): src/face.cpp $(IntermediateDirectory)/src_face.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/src/face.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_face.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_face.cpp$(DependSuffix): src/face.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_face.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_face.cpp$(DependSuffix) -MM "src/face.cpp"

$(IntermediateDirectory)/src_face.cpp$(PreprocessSuffix): src/face.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_face.cpp$(PreprocessSuffix) "src/face.cpp"

$(IntermediateDirectory)/src_vertex.cpp$(ObjectSuffix): src/vertex.cpp $(IntermediateDirectory)/src_vertex.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/src/vertex.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vertex.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vertex.cpp$(DependSuffix): src/vertex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_vertex.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_vertex.cpp$(DependSuffix) -MM "src/vertex.cpp"

$(IntermediateDirectory)/src_vertex.cpp$(PreprocessSuffix): src/vertex.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vertex.cpp$(PreprocessSuffix) "src/vertex.cpp"

$(IntermediateDirectory)/objTester_list.cpp$(ObjectSuffix): deps/objTester/list.cpp $(IntermediateDirectory)/objTester_list.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/deps/objTester/list.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/objTester_list.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/objTester_list.cpp$(DependSuffix): deps/objTester/list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/objTester_list.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/objTester_list.cpp$(DependSuffix) -MM "deps/objTester/list.cpp"

$(IntermediateDirectory)/objTester_list.cpp$(PreprocessSuffix): deps/objTester/list.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/objTester_list.cpp$(PreprocessSuffix) "deps/objTester/list.cpp"

$(IntermediateDirectory)/objTester_obj_parser.cpp$(ObjectSuffix): deps/objTester/obj_parser.cpp $(IntermediateDirectory)/objTester_obj_parser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/deps/objTester/obj_parser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/objTester_obj_parser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/objTester_obj_parser.cpp$(DependSuffix): deps/objTester/obj_parser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/objTester_obj_parser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/objTester_obj_parser.cpp$(DependSuffix) -MM "deps/objTester/obj_parser.cpp"

$(IntermediateDirectory)/objTester_obj_parser.cpp$(PreprocessSuffix): deps/objTester/obj_parser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/objTester_obj_parser.cpp$(PreprocessSuffix) "deps/objTester/obj_parser.cpp"

$(IntermediateDirectory)/objTester_objLoader.cpp$(ObjectSuffix): deps/objTester/objLoader.cpp $(IntermediateDirectory)/objTester_objLoader.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/deps/objTester/objLoader.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/objTester_objLoader.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/objTester_objLoader.cpp$(DependSuffix): deps/objTester/objLoader.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/objTester_objLoader.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/objTester_objLoader.cpp$(DependSuffix) -MM "deps/objTester/objLoader.cpp"

$(IntermediateDirectory)/objTester_objLoader.cpp$(PreprocessSuffix): deps/objTester/objLoader.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/objTester_objLoader.cpp$(PreprocessSuffix) "deps/objTester/objLoader.cpp"

$(IntermediateDirectory)/objTester_string_extra.cpp$(ObjectSuffix): deps/objTester/string_extra.cpp $(IntermediateDirectory)/objTester_string_extra.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/bin/src/Werkspace/JSaw/deps/objTester/string_extra.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/objTester_string_extra.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/objTester_string_extra.cpp$(DependSuffix): deps/objTester/string_extra.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/objTester_string_extra.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/objTester_string_extra.cpp$(DependSuffix) -MM "deps/objTester/string_extra.cpp"

$(IntermediateDirectory)/objTester_string_extra.cpp$(PreprocessSuffix): deps/objTester/string_extra.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/objTester_string_extra.cpp$(PreprocessSuffix) "deps/objTester/string_extra.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


