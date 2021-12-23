// swiftlint:disable all
import Amplify
import Foundation

extension Stats {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case points
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let stats = Stats.keys
    
    model.pluralName = "Stats"
    
    model.fields(
      .id(),
      .field(stats.points, is: .required, ofType: .double),
      .field(stats.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(stats.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}