public class DiscountCalculator {
    
    // Method to calculate discounted price
    public static Decimal calculateDiscount(Decimal originalPrice, Decimal discountPercent) {
        if (originalPrice < 0 || discountPercent < 0 || discountPercent > 100) {
            throw new IllegalArgumentException('Invalid input values');
        }
        Decimal discountAmount = (originalPrice * discountPercent) / 100;
        return originalPrice - discountAmount;
    }
}