function FilterLogic(fullSectionsList, fullTypesList, nonAvailableSlots)
{
	var _fullSectionsList = fullSectionsList;
	var _availableSlots = fullSectionsList;
	var _fullTypesList = fullTypesList;
	var _nonAvailableSlots = nonAvailableSlots;
	var _currentFilterType;

	/**
	 * Return an entire list of time slots filtered by type
	 */
	this.filterByType = function (type, nonAvailableSlots){
		_currentFilterType = type;
		
		if (nonAvailableSlots){
			this.filterNewAvailableSlots(nonAvailableSlots);
		}
		
		var filteredList = new Array();
		
		if (_fullTypesList[type]){
			var thisTypeList = _fullTypesList[type];
			var len = thisTypeList.length;
			for (var i=0; i<len; i++){
				var courseId = thisTypeList[i];
				filteredList[courseId] = _availableSlots[courseId];
			}
		}
		
		return filteredList;
	}

	/**
	 * Return all the avaiable slots
	 */
	this.filterNewAvailableSlots = function (nonAvailableSlots){
		if (nonAvailableSlots){
			_nonAvailableSlots = nonAvailableSlots;
			_availableSlots = new Array();

			// copy and paste the logic from the corresponding  code
			
		}
		
		return _availableSlots;
	}

}