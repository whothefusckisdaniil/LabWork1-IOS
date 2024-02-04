import Foundation

func combineStrings() 
{
    print("Enter the first line:")
    let firstLine = readLine() ?? ""
    
    print("Enter the second line:")
    let secondLine = readLine() ?? ""
    
    let combinedString = firstLine + secondLine
    print("Result of combination: \(combinedString)")
}

func flipString() 
{
    print("Enter the string to flip:")
    if let inputString = readLine() 
    {
        let reversedString = String(inputString.reversed())
        print("Result of flipping: \(reversedString)")
    }
}

func countCharacters() 
{
    print("Enter the string to count characters:")
    if let inputString = readLine() 
    {
        let characterCount = inputString.replacingOccurrences(of: " ", with: "").count
        print("Number of characters (excluding spaces): \(characterCount)")
    }
}

func searchSubstring() 
{
    print("Enter the main string:")
    if let mainString = readLine() 
    {
        print("Enter the substring to search for:")
        if let substring = readLine() 
        {
            if let range = mainString.range(of: substring) 
            {
                let index = mainString.distance(from: mainString.startIndex, to: range.lowerBound) + 1
                print("First occurrence of substring \"\(substring)\" at position: \(index)")
            } 
            else 
            {
                print("Substring not found in the string.")
            }
        }
    }
}

combineStrings()
flipString()
countCharacters()
searchSubstring()