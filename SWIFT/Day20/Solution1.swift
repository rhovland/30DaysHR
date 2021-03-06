import Foundation

var line = readLine()!

do {
    let regex = try NSRegularExpression(pattern: "[ !\\[,?\\.\\\\_'@+\\]]+", options: [])
    // We replace all invalid characters with spaces
    line = regex.stringByReplacingMatchesInString(line, options:[], range:NSMakeRange(0, line.characters.count), withTemplate: " ")
    // Split the string based on spaces
    let tokens = line.characters.split(" ").map(String.init)
    print(tokens.count, tokens.joinWithSeparator("\n"), separator:"\n")
} catch {
    print(error)
}
