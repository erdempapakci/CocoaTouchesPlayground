import Foundation

extension NSLayoutAnchor {
    @objc func anchorWithOffset(to anchor: NSLayoutAnchor<AnchorType>, constant: CGFloat = 0) -> NSLayoutConstraint {
        return constraint(equalTo: anchor, constant: constant)
    }
}

