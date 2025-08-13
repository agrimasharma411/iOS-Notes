/*
 
 ----------------------------------------------------------
 🔹 Protocol – Basic
 ----------------------------------------------------------
 
 A blueprint that defines properties/methods.
 Classes, structs, or enums can conform to a protocol.

 Example:
 Codable, Equatable, Identifiable,

 ----------------------------------------------------------
 🔹 Encodable
 ----------------------------------------------------------
 A type that can be converted from a Swift object into an external format (like JSON).
 Used when sending data to an API.
 
 
 ⭐️ Converts model ->to-> JSON (or any other format).

 Use JSONEncoder.

 📌 “Save or send data.”

 ----------------------------------------------------------
 🔹 Decodable
 ----------------------------------------------------------
 A type that can be initialized from external data like JSON.
 Used when receiving and parsing data from APIs.
 
 ⭐️ Converts JSON ->to->  model.

 Use JSONDecoder.

 📌 “Read or receive data.”

 ----------------------------------------------------------
 🔹 Codable
 ----------------------------------------------------------
 ⭐️ Shortcut for:-> Encodable & Decodable

 📌 “Supports both encoding and decoding.”

 ----------------------------------------------------------
 🔹 Equatable
 ----------------------------------------------------------
 ⭐️ Allows == comparison between two objects.

 📌 “Compare two instances for equality.”

 ----------------------------------------------------------
 🔹 Identifiable
 ----------------------------------------------------------
 It requires a unique id property.
 Often used in SwiftUI List or ForEach to uniquely identify each item.
 📌 “Identifiable means each item has a unique identity.”
 
 ⭐️ Requires a unique id property.

 📌 “Each item must have a unique ID.”

 ----------------------------------------------------------
 🔹 Hashable
 ----------------------------------------------------------
 A Hashable type can be stored in sets or used as dictionary keys.
 It must produce a unique hash value.
 📌 “Hashable = fast lookup + dictionary key support.”
 
 ⭐️ Makes object usable in sets/dictionaries.

 Generates a unique hash value.

 📌 “Support fast lookups.”


 
 
 
 
 
 */
