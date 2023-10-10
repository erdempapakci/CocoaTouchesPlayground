/*
 Drop Operations: It allows you to specify the behavior of the drop operation, such as whether the dropped text should be copied, moved, or linked. You can also define the operation's intent, like whether it's a user-initiated or programmatic drop.
 Preview Style: You can set the preview style for the dropped text. This determines how the text appears as it's being dragged over the drop target. Options include default, plain, prominent, or none.
 Previews Targeted Rect: You can specify the rect within the drop target view where the previews of the dropped text should be displayed.
 InteractionEnabled: You can enable or disable interactions during the drop operation. For example, you might disable interactions to prevent the user from interacting with the text while it's being dropped.
 PreferredInsertionPoint: You can provide a preferred insertion point for the dropped text within the drop target. This allows you to suggest where the text should be inserted.
 AcceptableTypeIdentifiers: You can specify the acceptable types of text that can be dropped. This helps filter out unwanted types of content during a drop operation.
 UITextDropProposal is typically used in conjunction with the UITextDropDelegate protocol when implementing text drag and drop interactions in your app. The delegate methods allow you to create and configure proposals based on the context of the drop.
 */
