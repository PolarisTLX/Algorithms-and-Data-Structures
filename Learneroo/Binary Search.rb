The complete binarySearch is below. To see it visualized, click here.

NOTE THIS IS NOT A BINARY SEARCH "TREE"

NOT THIS ONLY WORKS IN AN ARRAY THAT HAS BEEN SORTED.

NOTE CODE IS IN JAVA

int binarySearch(int[] ar, int iMin, int iMax, int num){
  # To prevent it from going forever, this ending condition
  #  if the number does not exist in the array
    if(iMax < iMin){
        return -1;
    }
    #  define a middle to start from
    int iMid = (iMax+iMin)/2;
    #  if the number looked at is EXACTLY the number desired, but return that index cause it's done.
    if(ar[iMid] == num){
        return iMid;
    }
    # else if either greater than or less than and cut the array in half and use recursion to start again.
    # else if(ar[iMid]>num){
    else if(num < ar[iMid]){
        return binarySearch(ar, iMin, iMid-1, num);
    }
    else{
        return binarySearch(ar, iMid+1, iMax, num);
    }
}



EXAMPLE FOR A COMPLETE RANGE OF NUMBERS (NOT AN ARRAY WHICH MAY OR MAY NOT HOLD EVERY NUMBER):

Challenge
The method doStuff takes in one square number. Create a separate recursive method that returns the square root of a given number. Call that method from doStuff and return the answer to be printed out.

Do not use any built in methods for calculating the square-root and dont try searching through all the numbers. Instead, use a binary-style search to home in on the actual square root.


def binarySearch(a, min, max)

		mid = ((max-min)/2) + min  # <--- THIS "+ min" IS KEY DIFFERENCE FROM ARRAY EXAMPLE !!!!

		# end conditon if target does not exist
		if min > max
			return -1
		end

		# check if the mid is the target number, if so return it, done.
		if (mid*mid) == a
			return mid

		elsif (mid*mid) < a
			min = mid+1
			binarySearch(a, min, max)
		else
			max = mid-1
			binarySearch(a, min, max)
		end

end

def do_stuff(a)
	max = a
	min = 0

	binarySearch(a, min, max)
end


#boilerplate code
t = gets.to_i
for i in 1..t do
	a = gets.strip.to_i
	puts do_stuff(a)
end
