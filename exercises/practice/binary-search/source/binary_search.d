module binary_search;

unittest
{
    import std.exception : assertThrown;

    const int allTestsEnabled = 0;

    // Finds a value in an array with one element
    {
        BinarySearch bs = BinarySearch([6]);
        assert(bs.find(6) == 0);
    }

    static if (allTestsEnabled)
    {
     
        // Finds a value in the middle of an array
        {
            BinarySearch bs = BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assert(bs.find(6) == 3);
        }
     
        // Finds a value at the beginning of an array
        {
            BinarySearch bs = BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assert(bs.find(1) == 0);
        }
     
        // Finds a value at the end of an array
        {
            BinarySearch bs = BinarySearch([1, 3, 4, 6, 8, 9, 11]);
            assert(bs.find(11) == 6);
        }

        // TODO - add tests
    }
}
