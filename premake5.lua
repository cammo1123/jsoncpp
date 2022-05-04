project "jsoncpp"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin/int-" .. outputdir .. "/%{prj.name}")

	files {
		"src/lib_json/**.cpp",
		"src/lib_json/**.h",
	}

	includedirs	{
		"include",
	}
	
	filter "configurations:Debug"
		symbols "On"

	filter "configurations:Release"
		optimize "On"