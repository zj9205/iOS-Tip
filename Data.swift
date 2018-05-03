// Base64 -> Data -> String and reverse
let base64Encoded = "YW55IGNhcm5hbCBwbGVhc3VyZS4="
let decodedData = Data(base64Encoded: base64Encoded)!
let decodedString = String(data: decodedData, encoding: .utf8)!
print(decodedString)

let str = "any carnal pleasure."
let strData = str.data(using: .utf8)
let strBase64 = strData?.base64EncodedString()
print(strBase64)

