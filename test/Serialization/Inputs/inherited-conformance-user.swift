import Base

// Instantiate Counter<Int>, relying on Counter's adoption of ForwardIndex.
public struct OneToAThousand : Collection {
  public typealias Element = Int
  public typealias Index = Counter<Int>

  public var startIndex: Index {
    return Index(value: 1)
  }

  public var endIndex: Index {
    return Index(value: 1001)
  }

  public subscript(i: Index) -> Element {
    return i.value
  }

  public init() {}
}

public protocol SpecialProto : IntegerLiteralConvertible {}
extension Int : SpecialProto {}
