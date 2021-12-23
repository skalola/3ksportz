//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, imageKey: String, version: Int? = nil) {
    graphQLMap = ["id": id, "imageKey": imageKey, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var imageKey: String {
    get {
      return graphQLMap["imageKey"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelPostConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(imageKey: ModelStringInput? = nil, and: [ModelPostConditionInput?]? = nil, or: [ModelPostConditionInput?]? = nil, not: ModelPostConditionInput? = nil) {
    graphQLMap = ["imageKey": imageKey, "and": and, "or": or, "not": not]
  }

  public var imageKey: ModelStringInput? {
    get {
      return graphQLMap["imageKey"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var and: [ModelPostConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPostConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPostConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPostConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPostConditionInput? {
    get {
      return graphQLMap["not"] as! ModelPostConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdatePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, imageKey: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "imageKey": imageKey, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var imageKey: String? {
    get {
      return graphQLMap["imageKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeletePostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateBasketballStatsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int? = nil) {
    graphQLMap = ["id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var points: Double {
    get {
      return graphQLMap["points"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var rebounds: Double {
    get {
      return graphQLMap["rebounds"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rebounds")
    }
  }

  public var assists: Double {
    get {
      return graphQLMap["assists"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assists")
    }
  }

  public var steals: Double {
    get {
      return graphQLMap["steals"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "steals")
    }
  }

  public var blocks: Double {
    get {
      return graphQLMap["blocks"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blocks")
    }
  }

  public var dunks: Double {
    get {
      return graphQLMap["dunks"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dunks")
    }
  }

  public var fadeAways: Double {
    get {
      return graphQLMap["fadeAways"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fadeAways")
    }
  }

  public var bankShots: Double {
    get {
      return graphQLMap["bankShots"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bankShots")
    }
  }

  public var gameWinners: Double {
    get {
      return graphQLMap["gameWinners"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gameWinners")
    }
  }

  public var gamesWon: Double {
    get {
      return graphQLMap["gamesWon"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesWon")
    }
  }

  public var gamesLost: Double {
    get {
      return graphQLMap["gamesLost"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesLost")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelBasketballStatsConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(points: ModelFloatInput? = nil, rebounds: ModelFloatInput? = nil, assists: ModelFloatInput? = nil, steals: ModelFloatInput? = nil, blocks: ModelFloatInput? = nil, dunks: ModelFloatInput? = nil, fadeAways: ModelFloatInput? = nil, bankShots: ModelFloatInput? = nil, gameWinners: ModelFloatInput? = nil, gamesWon: ModelFloatInput? = nil, gamesLost: ModelFloatInput? = nil, and: [ModelBasketballStatsConditionInput?]? = nil, or: [ModelBasketballStatsConditionInput?]? = nil, not: ModelBasketballStatsConditionInput? = nil) {
    graphQLMap = ["points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "and": and, "or": or, "not": not]
  }

  public var points: ModelFloatInput? {
    get {
      return graphQLMap["points"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var rebounds: ModelFloatInput? {
    get {
      return graphQLMap["rebounds"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rebounds")
    }
  }

  public var assists: ModelFloatInput? {
    get {
      return graphQLMap["assists"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assists")
    }
  }

  public var steals: ModelFloatInput? {
    get {
      return graphQLMap["steals"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "steals")
    }
  }

  public var blocks: ModelFloatInput? {
    get {
      return graphQLMap["blocks"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blocks")
    }
  }

  public var dunks: ModelFloatInput? {
    get {
      return graphQLMap["dunks"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dunks")
    }
  }

  public var fadeAways: ModelFloatInput? {
    get {
      return graphQLMap["fadeAways"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fadeAways")
    }
  }

  public var bankShots: ModelFloatInput? {
    get {
      return graphQLMap["bankShots"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bankShots")
    }
  }

  public var gameWinners: ModelFloatInput? {
    get {
      return graphQLMap["gameWinners"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gameWinners")
    }
  }

  public var gamesWon: ModelFloatInput? {
    get {
      return graphQLMap["gamesWon"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesWon")
    }
  }

  public var gamesLost: ModelFloatInput? {
    get {
      return graphQLMap["gamesLost"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesLost")
    }
  }

  public var and: [ModelBasketballStatsConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBasketballStatsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBasketballStatsConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBasketballStatsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBasketballStatsConditionInput? {
    get {
      return graphQLMap["not"] as! ModelBasketballStatsConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateBasketballStatsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, points: Double? = nil, rebounds: Double? = nil, assists: Double? = nil, steals: Double? = nil, blocks: Double? = nil, dunks: Double? = nil, fadeAways: Double? = nil, bankShots: Double? = nil, gameWinners: Double? = nil, gamesWon: Double? = nil, gamesLost: Double? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var points: Double? {
    get {
      return graphQLMap["points"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var rebounds: Double? {
    get {
      return graphQLMap["rebounds"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rebounds")
    }
  }

  public var assists: Double? {
    get {
      return graphQLMap["assists"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assists")
    }
  }

  public var steals: Double? {
    get {
      return graphQLMap["steals"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "steals")
    }
  }

  public var blocks: Double? {
    get {
      return graphQLMap["blocks"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blocks")
    }
  }

  public var dunks: Double? {
    get {
      return graphQLMap["dunks"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dunks")
    }
  }

  public var fadeAways: Double? {
    get {
      return graphQLMap["fadeAways"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fadeAways")
    }
  }

  public var bankShots: Double? {
    get {
      return graphQLMap["bankShots"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bankShots")
    }
  }

  public var gameWinners: Double? {
    get {
      return graphQLMap["gameWinners"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gameWinners")
    }
  }

  public var gamesWon: Double? {
    get {
      return graphQLMap["gamesWon"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesWon")
    }
  }

  public var gamesLost: Double? {
    get {
      return graphQLMap["gamesLost"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesLost")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteBasketballStatsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateStatsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, points: Double, version: Int? = nil) {
    graphQLMap = ["id": id, "points": points, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var points: Double {
    get {
      return graphQLMap["points"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelStatsConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(points: ModelFloatInput? = nil, and: [ModelStatsConditionInput?]? = nil, or: [ModelStatsConditionInput?]? = nil, not: ModelStatsConditionInput? = nil) {
    graphQLMap = ["points": points, "and": and, "or": or, "not": not]
  }

  public var points: ModelFloatInput? {
    get {
      return graphQLMap["points"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var and: [ModelStatsConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelStatsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelStatsConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelStatsConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelStatsConditionInput? {
    get {
      return graphQLMap["not"] as! ModelStatsConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateStatsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, points: Double? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "points": points, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var points: Double? {
    get {
      return graphQLMap["points"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteStatsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelPostFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, imageKey: ModelStringInput? = nil, and: [ModelPostFilterInput?]? = nil, or: [ModelPostFilterInput?]? = nil, not: ModelPostFilterInput? = nil) {
    graphQLMap = ["id": id, "imageKey": imageKey, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var imageKey: ModelStringInput? {
    get {
      return graphQLMap["imageKey"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var and: [ModelPostFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPostFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPostFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPostFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPostFilterInput? {
    get {
      return graphQLMap["not"] as! ModelPostFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelBasketballStatsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, points: ModelFloatInput? = nil, rebounds: ModelFloatInput? = nil, assists: ModelFloatInput? = nil, steals: ModelFloatInput? = nil, blocks: ModelFloatInput? = nil, dunks: ModelFloatInput? = nil, fadeAways: ModelFloatInput? = nil, bankShots: ModelFloatInput? = nil, gameWinners: ModelFloatInput? = nil, gamesWon: ModelFloatInput? = nil, gamesLost: ModelFloatInput? = nil, and: [ModelBasketballStatsFilterInput?]? = nil, or: [ModelBasketballStatsFilterInput?]? = nil, not: ModelBasketballStatsFilterInput? = nil) {
    graphQLMap = ["id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var points: ModelFloatInput? {
    get {
      return graphQLMap["points"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var rebounds: ModelFloatInput? {
    get {
      return graphQLMap["rebounds"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rebounds")
    }
  }

  public var assists: ModelFloatInput? {
    get {
      return graphQLMap["assists"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "assists")
    }
  }

  public var steals: ModelFloatInput? {
    get {
      return graphQLMap["steals"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "steals")
    }
  }

  public var blocks: ModelFloatInput? {
    get {
      return graphQLMap["blocks"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "blocks")
    }
  }

  public var dunks: ModelFloatInput? {
    get {
      return graphQLMap["dunks"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dunks")
    }
  }

  public var fadeAways: ModelFloatInput? {
    get {
      return graphQLMap["fadeAways"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fadeAways")
    }
  }

  public var bankShots: ModelFloatInput? {
    get {
      return graphQLMap["bankShots"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bankShots")
    }
  }

  public var gameWinners: ModelFloatInput? {
    get {
      return graphQLMap["gameWinners"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gameWinners")
    }
  }

  public var gamesWon: ModelFloatInput? {
    get {
      return graphQLMap["gamesWon"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesWon")
    }
  }

  public var gamesLost: ModelFloatInput? {
    get {
      return graphQLMap["gamesLost"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gamesLost")
    }
  }

  public var and: [ModelBasketballStatsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBasketballStatsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBasketballStatsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBasketballStatsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBasketballStatsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelBasketballStatsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStatsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, points: ModelFloatInput? = nil, and: [ModelStatsFilterInput?]? = nil, or: [ModelStatsFilterInput?]? = nil, not: ModelStatsFilterInput? = nil) {
    graphQLMap = ["id": id, "points": points, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var points: ModelFloatInput? {
    get {
      return graphQLMap["points"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var and: [ModelStatsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelStatsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelStatsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelStatsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelStatsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelStatsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePost($input: CreatePostInput!, $condition: ModelPostConditionInput) {\n  createPost(input: $input, condition: $condition) {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreatePostInput
  public var condition: ModelPostConditionInput?

  public init(input: CreatePostInput, condition: ModelPostConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPost: CreatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPost": createPost.flatMap { $0.snapshot }])
    }

    public var createPost: CreatePost? {
      get {
        return (snapshot["createPost"] as? Snapshot).flatMap { CreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePost($input: UpdatePostInput!, $condition: ModelPostConditionInput) {\n  updatePost(input: $input, condition: $condition) {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdatePostInput
  public var condition: ModelPostConditionInput?

  public init(input: UpdatePostInput, condition: ModelPostConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePost: UpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
    }

    public var updatePost: UpdatePost? {
      get {
        return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePost($input: DeletePostInput!, $condition: ModelPostConditionInput) {\n  deletePost(input: $input, condition: $condition) {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeletePostInput
  public var condition: ModelPostConditionInput?

  public init(input: DeletePostInput, condition: ModelPostConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePost: DeletePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
    }

    public var deletePost: DeletePost? {
      get {
        return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateBasketballStatsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateBasketballStats($input: CreateBasketballStatsInput!, $condition: ModelBasketballStatsConditionInput) {\n  createBasketballStats(input: $input, condition: $condition) {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateBasketballStatsInput
  public var condition: ModelBasketballStatsConditionInput?

  public init(input: CreateBasketballStatsInput, condition: ModelBasketballStatsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createBasketballStats", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createBasketballStats: CreateBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createBasketballStats": createBasketballStats.flatMap { $0.snapshot }])
    }

    public var createBasketballStats: CreateBasketballStat? {
      get {
        return (snapshot["createBasketballStats"] as? Snapshot).flatMap { CreateBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createBasketballStats")
      }
    }

    public struct CreateBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateBasketballStatsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateBasketballStats($input: UpdateBasketballStatsInput!, $condition: ModelBasketballStatsConditionInput) {\n  updateBasketballStats(input: $input, condition: $condition) {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateBasketballStatsInput
  public var condition: ModelBasketballStatsConditionInput?

  public init(input: UpdateBasketballStatsInput, condition: ModelBasketballStatsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBasketballStats", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateBasketballStats: UpdateBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateBasketballStats": updateBasketballStats.flatMap { $0.snapshot }])
    }

    public var updateBasketballStats: UpdateBasketballStat? {
      get {
        return (snapshot["updateBasketballStats"] as? Snapshot).flatMap { UpdateBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateBasketballStats")
      }
    }

    public struct UpdateBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteBasketballStatsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteBasketballStats($input: DeleteBasketballStatsInput!, $condition: ModelBasketballStatsConditionInput) {\n  deleteBasketballStats(input: $input, condition: $condition) {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteBasketballStatsInput
  public var condition: ModelBasketballStatsConditionInput?

  public init(input: DeleteBasketballStatsInput, condition: ModelBasketballStatsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBasketballStats", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteBasketballStats: DeleteBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteBasketballStats": deleteBasketballStats.flatMap { $0.snapshot }])
    }

    public var deleteBasketballStats: DeleteBasketballStat? {
      get {
        return (snapshot["deleteBasketballStats"] as? Snapshot).flatMap { DeleteBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteBasketballStats")
      }
    }

    public struct DeleteBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateStatsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateStats($input: CreateStatsInput!, $condition: ModelStatsConditionInput) {\n  createStats(input: $input, condition: $condition) {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateStatsInput
  public var condition: ModelStatsConditionInput?

  public init(input: CreateStatsInput, condition: ModelStatsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createStats", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createStats: CreateStat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createStats": createStats.flatMap { $0.snapshot }])
    }

    public var createStats: CreateStat? {
      get {
        return (snapshot["createStats"] as? Snapshot).flatMap { CreateStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createStats")
      }
    }

    public struct CreateStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateStatsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateStats($input: UpdateStatsInput!, $condition: ModelStatsConditionInput) {\n  updateStats(input: $input, condition: $condition) {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateStatsInput
  public var condition: ModelStatsConditionInput?

  public init(input: UpdateStatsInput, condition: ModelStatsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateStats", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateStats: UpdateStat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateStats": updateStats.flatMap { $0.snapshot }])
    }

    public var updateStats: UpdateStat? {
      get {
        return (snapshot["updateStats"] as? Snapshot).flatMap { UpdateStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateStats")
      }
    }

    public struct UpdateStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteStatsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteStats($input: DeleteStatsInput!, $condition: ModelStatsConditionInput) {\n  deleteStats(input: $input, condition: $condition) {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteStatsInput
  public var condition: ModelStatsConditionInput?

  public init(input: DeleteStatsInput, condition: ModelStatsConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteStats", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteStats: DeleteStat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteStats": deleteStats.flatMap { $0.snapshot }])
    }

    public var deleteStats: DeleteStat? {
      get {
        return (snapshot["deleteStats"] as? Snapshot).flatMap { DeleteStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteStats")
      }
    }

    public struct DeleteStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class SyncPostsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncPosts($filter: ModelPostFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncPosts(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      imageKey\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelPostFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelPostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncPosts: SyncPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncPosts": syncPosts.flatMap { $0.snapshot }])
    }

    public var syncPosts: SyncPost? {
      get {
        return (snapshot["syncPosts"] as? Snapshot).flatMap { SyncPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncPosts")
      }
    }

    public struct SyncPost: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelPostConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost($id: ID!) {\n  getPost(id: $id) {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPost", arguments: ["id": GraphQLVariable("id")], type: .object(GetPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPost: GetPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
    }

    public var getPost: GetPost? {
      get {
        return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
      }
    }

    public struct GetPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListPostsQuery: GraphQLQuery {
  public static let operationString =
    "query ListPosts($filter: ModelPostFilterInput, $limit: Int, $nextToken: String) {\n  listPosts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      imageKey\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelPostFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelPostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPosts: ListPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPosts": listPosts.flatMap { $0.snapshot }])
    }

    public var listPosts: ListPost? {
      get {
        return (snapshot["listPosts"] as? Snapshot).flatMap { ListPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPosts")
      }
    }

    public struct ListPost: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelPostConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class SyncBasketballStatsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncBasketballStats($filter: ModelBasketballStatsFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncBasketballStats(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      points\n      rebounds\n      assists\n      steals\n      blocks\n      dunks\n      fadeAways\n      bankShots\n      gameWinners\n      gamesWon\n      gamesLost\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelBasketballStatsFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelBasketballStatsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncBasketballStats", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncBasketballStats: SyncBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncBasketballStats": syncBasketballStats.flatMap { $0.snapshot }])
    }

    public var syncBasketballStats: SyncBasketballStat? {
      get {
        return (snapshot["syncBasketballStats"] as? Snapshot).flatMap { SyncBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncBasketballStats")
      }
    }

    public struct SyncBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelBasketballStatsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelBasketballStatsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["BasketballStats"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("points", type: .nonNull(.scalar(Double.self))),
          GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
          GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
          GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
          GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
          GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
          GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
          GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
          GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
          GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
          GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var points: Double {
          get {
            return snapshot["points"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "points")
          }
        }

        public var rebounds: Double {
          get {
            return snapshot["rebounds"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "rebounds")
          }
        }

        public var assists: Double {
          get {
            return snapshot["assists"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "assists")
          }
        }

        public var steals: Double {
          get {
            return snapshot["steals"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "steals")
          }
        }

        public var blocks: Double {
          get {
            return snapshot["blocks"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "blocks")
          }
        }

        public var dunks: Double {
          get {
            return snapshot["dunks"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "dunks")
          }
        }

        public var fadeAways: Double {
          get {
            return snapshot["fadeAways"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "fadeAways")
          }
        }

        public var bankShots: Double {
          get {
            return snapshot["bankShots"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "bankShots")
          }
        }

        public var gameWinners: Double {
          get {
            return snapshot["gameWinners"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "gameWinners")
          }
        }

        public var gamesWon: Double {
          get {
            return snapshot["gamesWon"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "gamesWon")
          }
        }

        public var gamesLost: Double {
          get {
            return snapshot["gamesLost"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "gamesLost")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetBasketballStatsQuery: GraphQLQuery {
  public static let operationString =
    "query GetBasketballStats($id: ID!) {\n  getBasketballStats(id: $id) {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBasketballStats", arguments: ["id": GraphQLVariable("id")], type: .object(GetBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getBasketballStats: GetBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Query", "getBasketballStats": getBasketballStats.flatMap { $0.snapshot }])
    }

    public var getBasketballStats: GetBasketballStat? {
      get {
        return (snapshot["getBasketballStats"] as? Snapshot).flatMap { GetBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getBasketballStats")
      }
    }

    public struct GetBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListBasketballStatsQuery: GraphQLQuery {
  public static let operationString =
    "query ListBasketballStats($filter: ModelBasketballStatsFilterInput, $limit: Int, $nextToken: String) {\n  listBasketballStats(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      points\n      rebounds\n      assists\n      steals\n      blocks\n      dunks\n      fadeAways\n      bankShots\n      gameWinners\n      gamesWon\n      gamesLost\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelBasketballStatsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelBasketballStatsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listBasketballStats", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listBasketballStats: ListBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Query", "listBasketballStats": listBasketballStats.flatMap { $0.snapshot }])
    }

    public var listBasketballStats: ListBasketballStat? {
      get {
        return (snapshot["listBasketballStats"] as? Snapshot).flatMap { ListBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listBasketballStats")
      }
    }

    public struct ListBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelBasketballStatsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelBasketballStatsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["BasketballStats"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("points", type: .nonNull(.scalar(Double.self))),
          GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
          GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
          GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
          GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
          GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
          GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
          GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
          GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
          GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
          GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var points: Double {
          get {
            return snapshot["points"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "points")
          }
        }

        public var rebounds: Double {
          get {
            return snapshot["rebounds"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "rebounds")
          }
        }

        public var assists: Double {
          get {
            return snapshot["assists"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "assists")
          }
        }

        public var steals: Double {
          get {
            return snapshot["steals"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "steals")
          }
        }

        public var blocks: Double {
          get {
            return snapshot["blocks"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "blocks")
          }
        }

        public var dunks: Double {
          get {
            return snapshot["dunks"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "dunks")
          }
        }

        public var fadeAways: Double {
          get {
            return snapshot["fadeAways"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "fadeAways")
          }
        }

        public var bankShots: Double {
          get {
            return snapshot["bankShots"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "bankShots")
          }
        }

        public var gameWinners: Double {
          get {
            return snapshot["gameWinners"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "gameWinners")
          }
        }

        public var gamesWon: Double {
          get {
            return snapshot["gamesWon"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "gamesWon")
          }
        }

        public var gamesLost: Double {
          get {
            return snapshot["gamesLost"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "gamesLost")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class SyncStatsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncStats($filter: ModelStatsFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncStats(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      points\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelStatsFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelStatsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncStats", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncStats: SyncStat? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncStats": syncStats.flatMap { $0.snapshot }])
    }

    public var syncStats: SyncStat? {
      get {
        return (snapshot["syncStats"] as? Snapshot).flatMap { SyncStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncStats")
      }
    }

    public struct SyncStat: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelStatsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelStatsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Stats"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("points", type: .nonNull(.scalar(Double.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var points: Double {
          get {
            return snapshot["points"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "points")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetStatsQuery: GraphQLQuery {
  public static let operationString =
    "query GetStats($id: ID!) {\n  getStats(id: $id) {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getStats", arguments: ["id": GraphQLVariable("id")], type: .object(GetStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getStats: GetStat? = nil) {
      self.init(snapshot: ["__typename": "Query", "getStats": getStats.flatMap { $0.snapshot }])
    }

    public var getStats: GetStat? {
      get {
        return (snapshot["getStats"] as? Snapshot).flatMap { GetStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getStats")
      }
    }

    public struct GetStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListStatsQuery: GraphQLQuery {
  public static let operationString =
    "query ListStats($filter: ModelStatsFilterInput, $limit: Int, $nextToken: String) {\n  listStats(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      points\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelStatsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelStatsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listStats", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listStats: ListStat? = nil) {
      self.init(snapshot: ["__typename": "Query", "listStats": listStats.flatMap { $0.snapshot }])
    }

    public var listStats: ListStat? {
      get {
        return (snapshot["listStats"] as? Snapshot).flatMap { ListStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listStats")
      }
    }

    public struct ListStat: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelStatsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelStatsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Stats"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("points", type: .nonNull(.scalar(Double.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var points: Double {
          get {
            return snapshot["points"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "points")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePost {\n  onCreatePost {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePost", type: .object(OnCreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePost: OnCreatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePost": onCreatePost.flatMap { $0.snapshot }])
    }

    public var onCreatePost: OnCreatePost? {
      get {
        return (snapshot["onCreatePost"] as? Snapshot).flatMap { OnCreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePost")
      }
    }

    public struct OnCreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePost {\n  onUpdatePost {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePost", type: .object(OnUpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePost: OnUpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePost": onUpdatePost.flatMap { $0.snapshot }])
    }

    public var onUpdatePost: OnUpdatePost? {
      get {
        return (snapshot["onUpdatePost"] as? Snapshot).flatMap { OnUpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePost")
      }
    }

    public struct OnUpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeletePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePost {\n  onDeletePost {\n    __typename\n    id\n    imageKey\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePost", type: .object(OnDeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePost: OnDeletePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePost": onDeletePost.flatMap { $0.snapshot }])
    }

    public var onDeletePost: OnDeletePost? {
      get {
        return (snapshot["onDeletePost"] as? Snapshot).flatMap { OnDeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePost")
      }
    }

    public struct OnDeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Post", "id": id, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateBasketballStatsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateBasketballStats {\n  onCreateBasketballStats {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateBasketballStats", type: .object(OnCreateBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateBasketballStats: OnCreateBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateBasketballStats": onCreateBasketballStats.flatMap { $0.snapshot }])
    }

    public var onCreateBasketballStats: OnCreateBasketballStat? {
      get {
        return (snapshot["onCreateBasketballStats"] as? Snapshot).flatMap { OnCreateBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateBasketballStats")
      }
    }

    public struct OnCreateBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateBasketballStatsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateBasketballStats {\n  onUpdateBasketballStats {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateBasketballStats", type: .object(OnUpdateBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateBasketballStats: OnUpdateBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateBasketballStats": onUpdateBasketballStats.flatMap { $0.snapshot }])
    }

    public var onUpdateBasketballStats: OnUpdateBasketballStat? {
      get {
        return (snapshot["onUpdateBasketballStats"] as? Snapshot).flatMap { OnUpdateBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateBasketballStats")
      }
    }

    public struct OnUpdateBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteBasketballStatsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteBasketballStats {\n  onDeleteBasketballStats {\n    __typename\n    id\n    points\n    rebounds\n    assists\n    steals\n    blocks\n    dunks\n    fadeAways\n    bankShots\n    gameWinners\n    gamesWon\n    gamesLost\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteBasketballStats", type: .object(OnDeleteBasketballStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteBasketballStats: OnDeleteBasketballStat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteBasketballStats": onDeleteBasketballStats.flatMap { $0.snapshot }])
    }

    public var onDeleteBasketballStats: OnDeleteBasketballStat? {
      get {
        return (snapshot["onDeleteBasketballStats"] as? Snapshot).flatMap { OnDeleteBasketballStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteBasketballStats")
      }
    }

    public struct OnDeleteBasketballStat: GraphQLSelectionSet {
      public static let possibleTypes = ["BasketballStats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("rebounds", type: .nonNull(.scalar(Double.self))),
        GraphQLField("assists", type: .nonNull(.scalar(Double.self))),
        GraphQLField("steals", type: .nonNull(.scalar(Double.self))),
        GraphQLField("blocks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("dunks", type: .nonNull(.scalar(Double.self))),
        GraphQLField("fadeAways", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bankShots", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gameWinners", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesWon", type: .nonNull(.scalar(Double.self))),
        GraphQLField("gamesLost", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, rebounds: Double, assists: Double, steals: Double, blocks: Double, dunks: Double, fadeAways: Double, bankShots: Double, gameWinners: Double, gamesWon: Double, gamesLost: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "BasketballStats", "id": id, "points": points, "rebounds": rebounds, "assists": assists, "steals": steals, "blocks": blocks, "dunks": dunks, "fadeAways": fadeAways, "bankShots": bankShots, "gameWinners": gameWinners, "gamesWon": gamesWon, "gamesLost": gamesLost, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var rebounds: Double {
        get {
          return snapshot["rebounds"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rebounds")
        }
      }

      public var assists: Double {
        get {
          return snapshot["assists"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "assists")
        }
      }

      public var steals: Double {
        get {
          return snapshot["steals"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "steals")
        }
      }

      public var blocks: Double {
        get {
          return snapshot["blocks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "blocks")
        }
      }

      public var dunks: Double {
        get {
          return snapshot["dunks"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "dunks")
        }
      }

      public var fadeAways: Double {
        get {
          return snapshot["fadeAways"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "fadeAways")
        }
      }

      public var bankShots: Double {
        get {
          return snapshot["bankShots"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bankShots")
        }
      }

      public var gameWinners: Double {
        get {
          return snapshot["gameWinners"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gameWinners")
        }
      }

      public var gamesWon: Double {
        get {
          return snapshot["gamesWon"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesWon")
        }
      }

      public var gamesLost: Double {
        get {
          return snapshot["gamesLost"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "gamesLost")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateStatsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateStats {\n  onCreateStats {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateStats", type: .object(OnCreateStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateStats: OnCreateStat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateStats": onCreateStats.flatMap { $0.snapshot }])
    }

    public var onCreateStats: OnCreateStat? {
      get {
        return (snapshot["onCreateStats"] as? Snapshot).flatMap { OnCreateStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateStats")
      }
    }

    public struct OnCreateStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateStatsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateStats {\n  onUpdateStats {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateStats", type: .object(OnUpdateStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateStats: OnUpdateStat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateStats": onUpdateStats.flatMap { $0.snapshot }])
    }

    public var onUpdateStats: OnUpdateStat? {
      get {
        return (snapshot["onUpdateStats"] as? Snapshot).flatMap { OnUpdateStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateStats")
      }
    }

    public struct OnUpdateStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteStatsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteStats {\n  onDeleteStats {\n    __typename\n    id\n    points\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteStats", type: .object(OnDeleteStat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteStats: OnDeleteStat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteStats": onDeleteStats.flatMap { $0.snapshot }])
    }

    public var onDeleteStats: OnDeleteStat? {
      get {
        return (snapshot["onDeleteStats"] as? Snapshot).flatMap { OnDeleteStat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteStats")
      }
    }

    public struct OnDeleteStat: GraphQLSelectionSet {
      public static let possibleTypes = ["Stats"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("points", type: .nonNull(.scalar(Double.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, points: Double, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Stats", "id": id, "points": points, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var points: Double {
        get {
          return snapshot["points"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}