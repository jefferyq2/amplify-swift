// swiftlint:disable all
import Amplify
import Foundation

extension Todo13 {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case content
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let todo13 = Todo13.keys
    
    model.authRules = [
      rule(allow: .public, provider: .iam, operations: [.create, .update, .delete, .read])
    ]
    
    model.listPluralName = "Todo13s"
    model.syncPluralName = "Todo13s"
    
    model.attributes(
      .primaryKey(fields: [todo13.id])
    )
    
    model.fields(
      .field(todo13.id, is: .required, ofType: .string),
      .field(todo13.content, is: .optional, ofType: .string),
      .field(todo13.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(todo13.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
    public class Path: ModelPath<Todo13> { }
    
    public static var rootPath: PropertyContainerPath? { Path() }
}

extension Todo13: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}
extension ModelPath where ModelType == Todo13 {
  public var id: FieldPath<String>   {
      string("id") 
    }
  public var content: FieldPath<String>   {
      string("content") 
    }
  public var createdAt: FieldPath<Temporal.DateTime>   {
      datetime("createdAt") 
    }
  public var updatedAt: FieldPath<Temporal.DateTime>   {
      datetime("updatedAt") 
    }
}