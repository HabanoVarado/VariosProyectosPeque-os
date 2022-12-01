
package factorial;


public class Tipofactorial {
    
    public int hallar_facatorial( int n){
        int fact = 1;
        for (int k = 1; k < n; k++) {
            fact = fact * k;
            return fact;
            
        }
    }
    
}
