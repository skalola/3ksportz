// swiftlint:disable all
import Amplify
import Foundation

public struct Stats: Model {
  public let id: String
  public var points: Double
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      points: Double) {
    self.init(id: id,
      points: points,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      points: Double,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.points = points
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}