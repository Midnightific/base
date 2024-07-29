--!strict

--@class test_CollectionServiceHelper
--@author Midnightific

--// Initialization

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CollectionServiceHelper = require(ReplicatedStorage:WaitForChild("base")).CollectionServiceHelper

--// Functions

local function testBindToTag()
	local tag = "MyTag"
	local instance1 = Instance.new("Part")

	instance1.Name = "Part1"
	instance1.Parent = game.Workspace
	CollectionServiceHelper:BindToTag(tag, function(instance) print("Instance added:", instance.Name) end)

	CollectionServiceHelper:BindToTag(tag, function(instance) print("Instance added again:", instance.Name) end)

	CollectionServiceHelper:BindToTag(tag, function(instance) print("Instance added once more:", instance.Name) end)

	CollectionService:AddTag(instance1, tag)
	task.wait(1)
	CollectionService:RemoveTag(instance1, tag)
	task.wait(1)
	instance1:Destroy()
end

local function testBindToTagWithFilter()
	local tag = "MyTag"
	local instance1 = Instance.new("Part")
	instance1.Name = "Part1"
	instance1.Parent = game.Workspace

	CollectionServiceHelper:BindToTagWithFilter(
		tag,
		function(instance) return instance:IsA("Part") end,
		function(instance) print("Part added:", instance.Name) end
	)

	CollectionServiceHelper:BindToTagWithFilter(
		tag,
		function(instance) return instance:IsA("Part") end,
		function(instance) end
	)

	CollectionServiceHelper:BindToTagWithFilter(
		tag,
		function(instance) return instance:IsA("Part") end,
		function(instance) print("Part added once more:", instance.Name) end
	)

	CollectionService:AddTag(instance1, tag)
	task.wait(1)
	CollectionService:RemoveTag(instance1, tag)
	task.wait(1)
	instance1:Destroy()
end

local function testBindToTagRemoved()
	local tag = "MyTag"
	local instance1 = Instance.new("Part")

	instance1.Name = "Part1"
	instance1.Parent = game.Workspace
	CollectionService:AddTag(instance1, tag)
	CollectionServiceHelper:BindToTagRemoved(tag, function(instance) print("Instance removed:", instance.Name) end)

	CollectionServiceHelper:BindToTagRemoved(
		tag,
		function(instance) print("Instance removed again:", instance.Name) end
	)

	CollectionServiceHelper:BindToTagRemoved(
		tag,
		function(instance) print("Instance removed once more:", instance.Name) end
	)

	CollectionService:RemoveTag(instance1, tag)
	task.wait(1)
	instance1:Destroy()
end

--// Triggers

testBindToTag()
testBindToTagWithFilter()
testBindToTagRemoved()
