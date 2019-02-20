-- Check the default dimensions of a worker
SELECT DEFAULTDIMENSIONVIEW.* 

	FROM HCMWORKER
	
	JOIN HCMEMPLOYMENT ON HCMEMPLOYMENT.WORKER = HCMwORKER.RECID
	JOIN DEFAULTDIMENSIONVIEW ON DEFAULTDIMENSIONVIEW.DEFAULTDIMENSION = HCMEMPLOYMENT.DEFAULTDIMENSION

	WHERE HCMWORKER.PERSONNELNUMBER = '000001'


-- Check the ledger dimension
SELECT DIMENSIONATTRIBUTEVALUECOMBINATION.RECID AS LEDGERDIMENSION, *

	FROM DIMENSIONATTRIBUTEVALUECOMBINATION

	JOIN DIMENSIONHIERARCHY ON DIMENSIONHIERARCHY.RECID = DIMENSIONATTRIBUTEVALUECOMBINATION.ACCOUNTSTRUCTURE
	JOIN DIMENSIONHIERARCHYLEVEL ON DIMENSIONHIERARCHYLEVEL.DIMENSIONHIERARCHY = DIMENSIONHIERARCHY.RECID
	JOIN DIMENSIONATTRIBUTE ON DIMENSIONATTRIBUTE.RECID = DIMENSIONHIERARCHYLEVEL.DIMENSIONATTRIBUTE

	WHERE DIMENSIONATTRIBUTEVALUECOMBINATION.RECID = 22565425517