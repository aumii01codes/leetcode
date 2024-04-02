//Palindrome number

class Solution {
    public boolean isPalindrome(int x) {
        int pal = 0;
        int dig;
        int ori =x;
        while (x>0){
            dig= x%10;
            pal= (pal * 10) + dig;
            x=x/10;
        }
        return ori==pal;
    }
}