--!strict

--@author Midnightific
--@class CollectionServiceHelper

--// Initialization

local CollectionService = game:GetService("CollectionService")

local Module = {}

--// Functions

function Module:BindToTag(Tag: string, Callback: (Instance) -> ()): RBXScriptConnection
	for _, TaggedInstance: Instance in CollectionService:GetTagged(Tag) do
		task.spawn(Callback, TaggedInstance)
	end

	return CollectionService:GetInstanceAddedSignal(Tag):Connect(Callback)
end

function Module:BindToTagWithFilter(
	Tag: string,
	Filter: (Instance) -> boolean,
	Callback: (Instance) -> ()
): RBXScriptConnection
	for _, TaggedInstance: Instance in CollectionService:GetTagged(Tag) do
		if Filter(TaggedInstance) then task.spawn(Callback, TaggedInstance) end
	end

	return CollectionService:GetInstanceAddedSignal(Tag):Connect(function(TaggedInstance: Instance)
		if Filter(TaggedInstance) then task.spawn(Callback, TaggedInstance) end
	end)
end

function Module:BindToTagRemoved(Tag: string, Callback: (Instance) -> ()): RBXScriptConnection
	return CollectionService:GetInstanceRemovedSignal(Tag):Connect(Callback)
end

return table.freeze(Module)
