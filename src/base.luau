--!strict

--@author Midnightific
--@class base

--// Initialization

local ServiceHelpers = script.Parent:WaitForChild("ServiceHelpers")

return table.freeze({
	CollectionServiceHelper = require(ServiceHelpers:WaitForChild("CollectionServiceHelper")),
})
