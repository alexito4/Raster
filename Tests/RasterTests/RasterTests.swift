import XCTest
@testable import Raster
import SnapshotTesting
import SwiftUI

final class RasterTests: XCTestCase {
    func testExample() throws {
        let size = CGSize(width: 100, height: 100)
        let view = ExampleView()
            .frame(width: size.width, height: size.height, alignment: .center)
            .background(Color.white)
        let image = view.rasterize(at: size)
        
        assertSnapshot(matching: image, as: .image)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

public struct ExampleView: View {
    public init() {}
    
    public var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .background(
                Circle()
                    .stroke(Color.green)
                    .scaleEffect(3)
            )
    }
}
