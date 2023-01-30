const {combineWords} = require('./combine');

/**
 * @feature - Build a string from two strings
 */
describe('combine two strings', () => {

    test('Throw exception when needed', () => {
        let [p1, p2] = [
            null,
            "a"
        ]
        expectException(combineWords(p1, p2))

        [p1, p2] = ["a", null];
        expectException(combineWords(p1, p2))
    })

    test("Empty strings return an empty string", () => {

        let [p1, p2] = [
            "",
            ""
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("")
    })

    test("One of the strings is empty", () => {
        let [p1, p2] = [
            "",
            "a"
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("")
    })

    test("Different strings result in an empty string", () => {
        let [p1, p2] = [
            "a",
            "b"
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("")
    })

    
    test("Strings with common letters result is correct string", () => {
        let [p1, p2] = [
            "bab",
            "aab"
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("a2b1")
    })

    test("Meet example requirement", () => {
        let [p1, p2] = [
            "teste",
            "teae"
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("e2t1")
    })

    test("No letters appear in the result after a letter with count 1", () => {
        let [p1, p2] = [
            "electron@code",
            "ponicode@"
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("@1")
    })

    test("No letters appear in the result after a letter with count 1", () => {
        let [p1, p2] = [
            "electroncode",
            "ponicode"
        ]
        let a = combineWords(p1, p2);
        expect(a).toEqual("c2e1")
    })



    // @scenario two empty strings
    test("two empty strings", () => {

        // @given first string is empty
        let p1 = ""

        // @given second string is empty
        let p2 = ""

        // @when execute the function with the strings
        let a = combineStrings(p1, p1);

        // @then the result is an empty string
        expect(a).toBe("")
    })
})