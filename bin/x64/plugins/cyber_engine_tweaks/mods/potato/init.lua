-- PerformanceBoostForPotatoPC, Cyberpunk 2077 mod that unlocks hidden graphic options
-- Copyright (C) 2022 BurgersMcFly

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.

registerForEvent("onInit", function()

	isLoaded = true
	isOverlay = false

	Settings = {

		Annoying = {

			{ option = "Bloom", name = "Bloom", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "Antialiasing", name = "Antialiasing", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "Distortion", name = "Distortion", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "MotionBlur", name = "Motion Blur", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "FilmGrain", name = "Film Grain", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "DepthOfField", name = "Depth Of Field", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "ChromaticAberration", name = "Chromatic Aberration", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "ImageBasedFlares", name = "Image Based Flares", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			--{option = "ConstrastAdaptiveSharpening",name = "Constrast Adaptive Sharpening",location = "Developer/FeatureToggles",note = "",defaultvalue = true},

		},

		GlobalIllumination = {

			{ option = "GlobalIllumination", name = "Global Illumination", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "DistantGI", name = "Distant Global Illumination", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			--{option = "CheckerboardGI",name = "Checkerboard Global Illumination",location = "Rendering",note = "",defaultvalue = true},

		},

		ScreenSpaceStuff = {

			{ option = "ScreenSpaceReflection", name = "Screen Space Reflections", location = "Developer/FeatureToggles",
				note = "", defaultvalue = true },

			{ option = "ScreenSpaceRain", name = "Screen Space Reflections for Rain", location = "Developer/FeatureToggles",
				note = "", defaultvalue = true },

			{ option = "ScreenSpaceUnderwater", name = "Underwater Screen Space Reflections",
				location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "SSAO", name = "Screen Space Ambient Occlusion", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "ScreenSpaceHeatHaze", name = "Screen Space Heat Haze", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "ScreenSpacePlanarReflection", name = "Screen Space Planar Reflections",
				location = "Developer/FeatureToggles", note = "", defaultvalue = true },

		},

		Fog = {

			{ option = "DistantFog", name = "Distant Fog", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "VolumetricFog", name = "Volumetric Fog", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "DistantVolFog", name = "Distant Volumetric Fog", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "VolumetricClouds", name = "Volumetric Clouds", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			--{option = "UseExperimentalVolFog",name = "Use Experimental Vol Fog",location = "Rendering",note = "",defaultvalue = true},

		},

		Shadows = {

			{ option = "LocalShadows", name = "Local Shadows", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "DistantShadows", name = "Distant Shadows", location = "Developer/FeatureToggles",
				note = "Needs to be enabled before loading to a different time of the day (day/night).", defaultvalue = true },

			{ option = "CascadeShadows", name = "Cascade Shadows", location = "Developer/FeatureToggles",
				note = "Needs to be enabled before loading to a different time of the day (day/night).", defaultvalue = true },

			{ option = "ContactShadows", name = "Contact Shadows", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			--{option = "EnableDeferredLightsStencil",name = "Deferred Lights Stencil",location = "Rendering",note = "",defaultvalue = true},

		},

		Weather = {

			{ option = "Weather", name = "Weather", location = "Developer/FeatureToggles",
				note = "Requires Reloading (multiple times?), Requires disabled cascade/distant shadows?, Breaks lighting?",
				defaultvalue = true },

		},

		CharactersSettings = {

			{ option = "CharacterLightBlockers", name = "Character Light Blockers", location = "Developer/FeatureToggles",
				note = "", defaultvalue = true },

			{ option = "CharacterRimEnhancement", name = "Character Rim Enhancement", location = "Developer/FeatureToggles",
				note = "", defaultvalue = true },

			{ option = "CharacterSubsurfaceScattering", name = "Character Subsurface Scattering",
				location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			{ option = "Hair", name = "Hair", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

		},

		Rain = {

			{ option = "RainMap", name = "Rain Map", location = "Developer/FeatureToggles", note = "", defaultvalue = true },

			--{option = "RainMapProxySorting",name = "Rain Map Proxy Sorting",location = "Rendering",note = "",defaultvalue = true},

		},

		Decals = {

			{ option = "DynamicDecals", name = "Dynamic Decals", location = "Developer/FeatureToggles", note = "",
				defaultvalue = true },

			{ option = "Enabled", name = "Static Decals", location = "Streaming/Culling/StaticDecals", note = "",
				defaultvalue = true },

		},


		CrowdOptions = {

			{ option = "Enabled", name = "Crowd", location = "Crowd",
				note = "Requires Reloading/Changing areas. Disables roaming cars and pedestrians.", defaultvalue = true },

			--{option = "DisableLOD",name = "Traffic/DisableLOD",location = "Traffic",note = "",defaultvalue = true},

		},

		AsyncCompute = {

			{ option = "Enable", name = "AsyncCompute/Enable", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "DPL", name = "AsyncCompute/DPL", location = "Rendering/AsyncCompute", note = "Might help on old hardware.",
				defaultvalue = true },

			--{option = "HairClears",name = "AsyncCompute/HairClears",location = "Rendering/AsyncCompute",note = "Might help on old hardware.",defaultvalue = false},

			{ option = "SSAO", name = "AsyncCompute/SSAO", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "LutGeneration", name = "AsyncCompute/LutGeneration", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			--{option = "ExposureScaleBuffer",name = "AsyncCompute/ExposureScaleBuffer",location = "Rendering/AsyncCompute",note = "Might help on old hardware.",defaultvalue = true},

			{ option = "DynamicTexture", name = "AsyncCompute/DynamicTexture", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "FlattenNormals", name = "AsyncCompute/FlattenNormals", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "BuildDepthChain", name = "AsyncCompute/BuildDepthChain", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "ExtendedDuringSSR", name = "AsyncCompute/ExtendedDuringSSR", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "UseAsyncComputeFFT", name = "WaterSimulation/UseAsyncComputeFFT", location = "WaterSimulation",
				note = "Might help on old hardware.", defaultvalue = true },

			{ option = "RaytraceASBuild", name = "AsyncCompute/RaytraceASBuild", location = "Rendering/AsyncCompute",
				note = "Might help on old hardware.", defaultvalue = true },

		},

		--NoInfo = {

		--{option = "RuntimeTangentUpdate",name = "RuntimeTangentUpdate",location = "Developer/FeatureToggles",note = "Requires Reloading?",defaultvalue = true},

		--},

		CustomMipBias = {

			{ option = "EnableCustomMipBias", name = "EnableCustomMipBias", location = "Editor/MipBias", note = "",
				defaultvalue = false },

		},

		CustomMipdefaultvalue = {

			{ option = "ForceCustomMipBias", name = "ForceCustomMipBias", location = "Editor/MipBias", note = "", defaultvalue = 1 },

		},

		MaxStreamingDistance = {

			{ option = "MaxStreamingDistance", name = "MaxStreamingDistance", location = "Streaming",
				note = "Extreme, Requires Reloading, Will break some quests.", defaultvalue = 23170.251953 },

		},

		StreamMaxLoadingThreads = {

			{ option = "StreamMaxLoadingThreads", name = "StreamMaxLoadingThreads", location = "ResourceLoaderThrottler",
				note = "", defaultvalue = 2 },
		},
	}

end)

registerForEvent("onOverlayOpen", function()
	isOverlay = true
end)

registerForEvent("onOverlayClose", function()
	isOverlay = false
end)

registerForEvent("onDraw", function()

	if isLoaded and isOverlay then

		ImGui.SetNextWindowPos(100, 100, ImGuiCond.FirstUseEver)
		ImGui.Begin("Potato", ImGuiWindowFlags.AlwaysAutoResize)

		ImGui.Text("Annoying:")

		for _, gameOption in pairs(Settings.Annoying) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Global Illumination:")

		for _, gameOption in pairs(Settings.GlobalIllumination) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Screen Space Stuff:")

		for _, gameOption in pairs(Settings.ScreenSpaceStuff) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Fog:")

		for _, gameOption in pairs(Settings.Fog) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Shadows:")

		for _, gameOption in pairs(Settings.Shadows) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Weather:")

		for _, gameOption in pairs(Settings.Weather) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Character Settings:")

		for _, gameOption in pairs(Settings.CharactersSettings) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Rain:")

		for _, gameOption in pairs(Settings.Rain) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Decals:")

		for _, gameOption in pairs(Settings.Decals) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Crowd Options:")

		for _, gameOption in pairs(Settings.CrowdOptions) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Custom Mip Bias:")

		for _, gameOption in pairs(Settings.CustomMipBias) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		--ImGui.Text("")
		--ImGui.Text("CustomMipdefaultvalue:")

		for _, gameOption in pairs(Settings.CustomMipdefaultvalue) do

			gameOption.defaultvalue = GameOptions.GetFloat(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.DragFloat(gameOption.name, gameOption.defaultvalue, 0.1, 0, 16, "%.3f", 16)

			if toggled
			then
				GameOptions.SetFloat(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		ImGui.Text("")
		ImGui.Text("Max Streaming Distance:")

		for _, gameOption in pairs(Settings.MaxStreamingDistance) do

			gameOption.defaultvalue = GameOptions.GetFloat(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.DragFloat("##MaxStreamingDistance", gameOption.defaultvalue, 100, 100,
				23170.251953, "%.3f", 16)

			if ImGui.IsItemHovered()

			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetFloat(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		--[[ImGui.Text("")
		ImGui.Text("Stream Max Loading Threads:")
		
		for _,gameOption in pairs(Settings.StreamMaxLoadingThreads)
		do

			gameOption.defaultvalue = GameOptions.GetInt(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.DragInt("##StreamMaxLoadingThreads", gameOption.defaultvalue, 1, 1, 2, "%.3f", 16)

            if ImGui.IsItemHovered()

			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetInt(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end]] --


		ImGui.Text("")
		ImGui.Text("AsyncCompute:")

		for _, gameOption in pairs(Settings.AsyncCompute) do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

			if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end

		--[[ImGui.Text("")
		ImGui.Text("No Info:")

		for _,gameOption in pairs(Settings.NoInfo)
		do

			gameOption.defaultvalue = GameOptions.GetBool(gameOption.location, gameOption.option)

			gameOption.defaultvalue, toggled = ImGui.Checkbox(gameOption.name, gameOption.defaultvalue)

            if ImGui.IsItemHovered()
			then
				ImGui.BeginTooltip()
				ImGui.SetTooltip(gameOption.note)
				ImGui.EndTooltip()
			end

			if toggled
			then
				GameOptions.SetBool(gameOption.location, gameOption.option, gameOption.defaultvalue)
			end
		end
		
			local percache = {location = "World/Streaming/PersistencyCache", option = "PoolBudgetKB", defaultvalue = 4096}

			percache.defaultvalue = GameOptions.GetInt(percache.location, percache.option)
			percache.defaultvalue, toggled = ImGui.DragInt(percache.option, percache.defaultvalue, 10, 512, 4096, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(percache.location, percache.option, percache.defaultvalue)
			end			
				
			local MaxEntriesPerPage = {location = "World/Streaming/PersistencyCache", option = "MaxEntriesPerPage", defaultvalue = 8}

			MaxEntriesPerPage.defaultvalue = GameOptions.GetInt(MaxEntriesPerPage.location, MaxEntriesPerPage.option)
			MaxEntriesPerPage.defaultvalue, toggled = ImGui.DragInt(MaxEntriesPerPage.option, MaxEntriesPerPage.defaultvalue, 1, 1, 8, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(MaxEntriesPerPage.location, MaxEntriesPerPage.option, MaxEntriesPerPage.defaultvalue)
			end]] --

		--[[local StaticDecals_Enabled = {name = "StaticDecals/Enabled", location = "Streaming/Culling/StaticDecals", option = "Enabled", defaultvalue = "bool"}

			StaticDecals_Enabled.defaultvalue = GameOptions.GetBool(StaticDecals_Enabled.location, StaticDecals_Enabled.option)
			StaticDecals_Enabled.defaultvalue, toggled = ImGui.Checkbox(StaticDecals_Enabled.name, StaticDecals_Enabled.defaultvalue)
			if toggled 
			then
            GameOptions.SetBool(StaticDecals_Enabled.location, StaticDecals_Enabled.option, StaticDecals_Enabled.defaultvalue)
			end

			local percache = {location = "World/Streaming/PersistencyCache", option = "PoolBudgetKB", defaultvalue = "int"}

			percache.defaultvalue = GameOptions.GetInt(percache.location, percache.option)
			percache.defaultvalue, toggled = ImGui.DragInt(percache.option, percache.defaultvalue, 10, 512, 4096, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(percache.location, percache.option, percache.defaultvalue)
			end			
				
			local MaxEntriesPerPage = {location = "World/Streaming/PersistencyCache", option = "MaxEntriesPerPage", defaultvalue = "int"}

			MaxEntriesPerPage.defaultvalue = GameOptions.GetInt(MaxEntriesPerPage.location, MaxEntriesPerPage.option)
			MaxEntriesPerPage.defaultvalue, toggled = ImGui.DragInt(MaxEntriesPerPage.option, MaxEntriesPerPage.defaultvalue, 1, 1, 8, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(MaxEntriesPerPage.location, MaxEntriesPerPage.option, MaxEntriesPerPage.defaultvalue)
			end
							
			local RadiusNearInvMult = {location = "Streaming", option = "RadiusNearInvMult", defaultvalue = "float"}

			RadiusNearInvMult.defaultvalue = GameOptions.GetFloat(RadiusNearInvMult.location, RadiusNearInvMult.option)
			RadiusNearInvMult.defaultvalue, toggled = ImGui.DragFloat(RadiusNearInvMult.option, RadiusNearInvMult.defaultvalue, 0.01, 0.1, 0.800000, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetFloat(RadiusNearInvMult.location, RadiusNearInvMult.option, RadiusNearInvMult.defaultvalue)
			end
											
			local DecalsHideDistance = {location = "LevelOfDetail", option = "DecalsHideDistance", defaultvalue = "float"}

			DecalsHideDistance.defaultvalue = GameOptions.GetFloat(DecalsHideDistance.location, DecalsHideDistance.option)
			DecalsHideDistance.defaultvalue, toggled = ImGui.DragFloat(DecalsHideDistance.option, DecalsHideDistance.defaultvalue, 0.1, 0.1, 40.000000, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetFloat(DecalsHideDistance.location, DecalsHideDistance.option, DecalsHideDistance.defaultvalue)
			end
															
			local DynamicDecalsHideDistance = {location = "LevelOfDetail", option = "DynamicDecalsHideDistance", defaultvalue = "float"}

			DynamicDecalsHideDistance.defaultvalue = GameOptions.GetFloat(DynamicDecalsHideDistance.location, DynamicDecalsHideDistance.option)
			DynamicDecalsHideDistance.defaultvalue, toggled = ImGui.DragFloat(DynamicDecalsHideDistance.option, DynamicDecalsHideDistance.defaultvalue, 0.1, 0.1, 20.000000, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetFloat(DynamicDecalsHideDistance.location, DynamicDecalsHideDistance.option, DynamicDecalsHideDistance.defaultvalue)
			end
																			
			local StaticDecals_Enabled = {name = "StaticDecals/Enabled", location = "Streaming/Culling/StaticDecals", option = "Enabled", defaultvalue = "bool"}

			StaticDecals_Enabled.defaultvalue = GameOptions.GetBool(StaticDecals_Enabled.location, StaticDecals_Enabled.option)
			StaticDecals_Enabled.defaultvalue, toggled = ImGui.Checkbox(StaticDecals_Enabled.name, StaticDecals_Enabled.defaultvalue)
			if toggled 
			then
            GameOptions.SetBool(StaticDecals_Enabled.location, StaticDecals_Enabled.option, StaticDecals_Enabled.defaultvalue)
			end
																							
			local FlatDecalDistance = {name = "StaticDecals/FlatDecalDistance", location = "Streaming/Culling/StaticDecals", option = "FlatDecalDistance", defaultvalue = "float"}

			FlatDecalDistance.defaultvalue = GameOptions.GetFloat(FlatDecalDistance.location, FlatDecalDistance.option)
			FlatDecalDistance.defaultvalue, toggled = ImGui.DragFloat(FlatDecalDistance.option, FlatDecalDistance.defaultvalue, 0.1, 0.1, 20.000000, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetFloat(FlatDecalDistance.location, FlatDecalDistance.option, FlatDecalDistance.defaultvalue)
			end
																											
			local PosterDecalDistance = {name = "StaticDecals/PosterDecalDistance", location = "Streaming/Culling/StaticDecals", option = "PosterDecalDistance", defaultvalue = "float"}

			PosterDecalDistance.defaultvalue = GameOptions.GetFloat(PosterDecalDistance.location, PosterDecalDistance.option)
			PosterDecalDistance.defaultvalue, toggled = ImGui.DragFloat(PosterDecalDistance.option, PosterDecalDistance.defaultvalue, 0.1, 0.1, 40.000000, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetFloat(PosterDecalDistance.location, PosterDecalDistance.option, PosterDecalDistance.defaultvalue)
			end
											
	
			local MaxGbufferSplits = {location = "Rendering", option = "MaxGbufferSplits", defaultvalue = "int"}

			MaxGbufferSplits.defaultvalue = GameOptions.GetInt(MaxGbufferSplits.location, MaxGbufferSplits.option)
			MaxGbufferSplits.defaultvalue, toggled = ImGui.DragInt(MaxGbufferSplits.option, MaxGbufferSplits.defaultvalue, 1, 2, 8, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(MaxGbufferSplits.location, MaxGbufferSplits.option, MaxGbufferSplits.defaultvalue)
			end
			
			local StreamMaxLoadingThreads = {location = "ResourceLoaderThrottler", option = "StreamMaxLoadingThreads", defaultvalue = "int"}

			StreamMaxLoadingThreads.defaultvalue = GameOptions.GetInt(StreamMaxLoadingThreads.location, StreamMaxLoadingThreads.option)
			StreamMaxLoadingThreads.defaultvalue, toggled = ImGui.DragInt(StreamMaxLoadingThreads.option, StreamMaxLoadingThreads.defaultvalue, 1, 1, 2, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(StreamMaxLoadingThreads.location, StreamMaxLoadingThreads.option, StreamMaxLoadingThreads.defaultvalue)
			end
				
			local FloodMinNonLoadingThreads = {location = "ResourceLoaderThrottler", option = "FloodMinNonLoadingThreads", defaultvalue = "int"}

			FloodMinNonLoadingThreads.defaultvalue = GameOptions.GetInt(FloodMinNonLoadingThreads.location, FloodMinNonLoadingThreads.option)
			FloodMinNonLoadingThreads.defaultvalue, toggled = ImGui.DragInt(FloodMinNonLoadingThreads.option, FloodMinNonLoadingThreads.defaultvalue, 1, 1, 2, "%.3f", 16)
			if toggled 
			then
            GameOptions.SetInt(FloodMinNonLoadingThreads.location, FloodMinNonLoadingThreads.option, FloodMinNonLoadingThreads.defaultvalue)
			end--]]

		ImGui.End()

	end
end)
