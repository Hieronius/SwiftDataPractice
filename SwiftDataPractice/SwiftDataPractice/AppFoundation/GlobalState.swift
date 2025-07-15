import Foundation

class GlobalState {
	
	var mainStateSnapshot = MainStateSnapshot()
	
	init(mainStateSnapshot: MainStateSnapshot) {
		self.mainStateSnapshot = mainStateSnapshot
	}
	
}

// MARK: From Model to State

extension GlobalState {
	
	convenience init(model: GlobalStateModel) {
		let mainStateSnapshotModel = model.mainStateSnapshotModel
		let mainStateSnapshot = MainStateSnapshot(model: mainStateSnapshotModel)
		self.init(mainStateSnapshot: mainStateSnapshot)
	}
}


