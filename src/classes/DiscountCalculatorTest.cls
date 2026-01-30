@isTest
public class DiscountCalculatorTest {

    @isTest
    static void testCalculateDiscount_ValidInput() {
        Decimal originalPrice = 100;
        Decimal discountPercent = 20;
        Decimal expectedPrice = 80;

        Decimal actualPrice = DiscountCalculator.calculateDiscount(originalPrice, discountPercent);
        System.assertEquals(expectedPrice, actualPrice, 'Discounted price should be 80');
    }

    @isTest
    static void testCalculateDiscount_ZeroDiscount() {
        Decimal originalPrice = 150;
        Decimal discountPercent = 0;
        Decimal expectedPrice = 150;

        Decimal actualPrice = DiscountCalculator.calculateDiscount(originalPrice, discountPercent);
        System.assertEquals(expectedPrice, actualPrice, 'Discounted price should be 150');
    }

    @isTest
    static void testCalculateDiscount_InvalidDiscount() {
        try {
            DiscountCalculator.calculateDiscount(100, 150);
            System.assert(false, 'Expected exception for invalid discount percent');
        } catch (Exception e) {
            System.assertEquals('Invalid input values', e.getMessage());
        }
    }
}