project "glslang"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
		"glslang/GenericCodeGen/**.cpp",
        "glslang/Include/**.h",
        "glslang/MachineIndependent/**.h",
        "glslang/MachineIndependent/**.cpp",
        "glslang/OSDependent/Windows/**.cpp",
        "glslang/Public/**.h",
        "OGLCompilersDLL/**.h",
        "OGLCompilersDLL/**.cpp",
        "SPIRV/**.h",
        "SPIRV/**.cpp",
        "SPIRV/**.cpp",
        "StandAlone/DirStackFileIncluder.h",
        "StandAlone/Worklist.h",
        "StandAlone/ResourceLimits.h",
        "StandAlone/ResourceLimits.cpp",
        
        "glslang/build_info.h",
    }

    includedirs
    {
        "",
        "OGLCompilersDLL",
    }
    
	filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
		buildoptions "/MDd"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
		buildoptions "/MD"
        optimize "on"