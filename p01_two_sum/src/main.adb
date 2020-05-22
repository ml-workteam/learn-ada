with Ada.Text_IO; use Ada.Text_IO;

-- Given an array of integers, return indices of the two numbers such that they add up to a specific target.
-- You may assume that each input would have exactly one solution, and you may not use the same element twice.
-- Example:
--
-- Given nums = [2, 7, 11, 15], target = 9,
--
-- Because nums[0] + nums[1] = 2 + 7 = 9,
-- return [0, 1].

procedure Main is
   Target: Long_Integer := 0;
   type Mint is mod 2**3;
   type List is array (Mint range <>) of Integer;
   nums: List := (1, 2, 4, 6 ,7);

   function myfunc(x: Integer) return Integer is
   begin
      return x*2;
   end myfunc;

begin
   for count in nums'First..nums'Last-1 loop
      put(Mint'image(count)); put(" "); put(Integer'Image(myfunc(Integer(count)))); put(" ");
      put_line(Integer'Image(nums(count)));
   end loop;
end Main;
