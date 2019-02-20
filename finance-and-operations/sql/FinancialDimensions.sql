-- Check the default dimensions of a worker
select DefaultDimensionView.* 

	from HcmWorker
	
	join HcmEmployment on HcmEmployment.Worker = HcmWorker.RecId
	join DefaultDimensionView on DefaultDimensionView.DefaultDimension = HcmEmployment.DefaultDimension

	where HcmWorker.PersonnelNumber = '000001'


-- Check the ledger dimension
select DimensionAttributeValueCombination.RecId AS LedgerDimension, *

	from DimensionAttributeValueCombination

	join DimensionHierarchy on DimensionHierarchy.RecId = DimensionAttributeValueCombination.AccountStructure
	join DimensionHierarchyLevel on DimensionHierarchyLevel.DimensionHierarchy = DimensionHierarchy.RecId
	join DimensionAttribute on DimensionAttribute.RecId = DimensionHierarchyLevel.DimensionAttribute

	where DimensionAttributeValueCombination.RecId = 22565425517
