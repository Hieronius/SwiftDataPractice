import Foundation

protocol GameStateManaging {
	
	associatedtype Snapshot
	
	func extractSnapshot() -> Snapshot
	func applySnapshot(_ snapshot: Snapshot)
}
