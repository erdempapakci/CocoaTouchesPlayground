import UIKit

let undoManager = UndoManager()

// undoManager.registerUndo(withTarget: self) { _ in }
// Perform action

undoManager.undo()

undoManager.redo()
