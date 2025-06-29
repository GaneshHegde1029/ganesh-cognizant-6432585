package EcommerceSearch;

public class Main {
    public static void main(String[] args) {
        Product[] products = {
            new Product(101, "Shirt", "Clothing"),
            new Product(102, "Laptop", "Electronics"),
            new Product(103, "Mouse", "Electronics"),
            new Product(104, "Shoes", "Footwear"),
            new Product(105, "Watch", "Accessories")
        };

        System.out.println("Linear Search for 'Shoes':");
        Product result1 = LinearSearch.search(products, "Shoes");
        System.out.println(result1 != null ? result1 : "Product not found");

        System.out.println("Binary Search for 'Shoes':");
        Product result2 = BinarySearch.search(products, "Shoes");
        System.out.println(result2 != null ? result2 : "Product not found");
    }
}
