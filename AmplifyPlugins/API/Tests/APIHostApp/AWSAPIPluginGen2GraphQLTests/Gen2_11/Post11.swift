// swiftlint:disable all
import Amplify
import Foundation

public struct Post11: Model {
  public let id: String
  public var title: String?
  public var content: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      title: String? = nil,
      content: String? = nil) {
    self.init(id: id,
      title: title,
      content: content,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      title: String? = nil,
      content: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.title = title
      self.content = content
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}