////////////////////////////////////////////////
// -- SharpeYe                                //
// by Hurricaaane (Ha3)                       //
//                                            //
// http://www.youtube.com/user/Hurricaaane    //
//--------------------------------------------//
// Shared Autorun                             //
////////////////////////////////////////////////

if SHARPEYE_DEBUG == nil then
	SHARPEYE_DEBUG = false
end

-- Developer notes :
--   "--" comments should be used for regular comments.
--   "//" comments should be used for debugging / technical / header comments.

SHARPEYE_NAME = "SharpeYe"
SHARPEYE_FOCUS_NAME = "SharpeYe :: Focus"

include("cl_sharpeye_preforce.lua")

function sharpeye_Load()
	pcall(function() if sharpeye and sharpeye.Unmount then sharpeye.Unmount() end end)
	
	sharpeye_InitLoad()

	sharpeye = {}
	sharpeye.dat = {}

	ADDON_PROP = {}

	include( "cd_sharpeye_includelist.lua" )

	for i = 1, #ADDON_PROP do
		include( ADDON_PROP[i] )
		
	end

	ADDON_PROP = nil

	if sharpeye.Mount then
		sharpeye.Mount()
		
	end

end

sharpeye_Load()