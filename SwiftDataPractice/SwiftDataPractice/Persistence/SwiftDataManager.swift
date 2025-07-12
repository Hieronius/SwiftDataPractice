import SwiftData

@MainActor
final class SwiftDataManager {
	
	private var context: ModelContext
	
	init(context: ModelContext) {
		self.context = context
	}
	
	@MainActor
	func getGlobalState() -> GlobalState? {
		
		do {
			let result = try context.fetch(FetchDescriptor<GlobalStateModel>())
			guard let model = result.first else { return nil }
			return GlobalState(model: model)
		} catch {
			print("Fatal error -> wasn't able to extract State")
			return GlobalState(mainStateSnapshot: MainStateSnapshot())
		}
	}
	
	@MainActor
	func saveGlobalGameState(_ state: GlobalState) {
		
		do {
			let model = GlobalStateModel(state: state)
			context.insert(model)		
			try context.save()
		} catch {
			print("Fatal error -> wasn't able to save State")
		}
	}
}
