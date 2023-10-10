/*
 Objects that adopt the UITextInput protocol maintain information about text input and provide that information to the text input system on demand. A UITextInput object interacts with the text input system by:
 Reporting text positions and text ranges
 Responding to queries layout and writing direction
 Performing hit-testing — returning text positions and ranges for a specific point
 Providing the system with rectangles for highlighting ranges of text and drawing the caret, a glyph that represents the insertion point during text entry
 In addition, a UITextInput object maintains ranges for selected text and marked text. Marked text, a part of multistage text input, represents provisionally inserted text that the user has yet to confirm. The range of marked text always contains a range of selected text, which might be a range of characters or the caret. Multistage text input is a requirement when the language is ideographic and the keyboard is phonetic.
 */
