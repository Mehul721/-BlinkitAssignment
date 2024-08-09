
Introduction
This SwiftUI application is a simple e-commerce app that displays a list of categories and products. 
Users can navigate through categories, view product details, and see product discounts. 
The app uses SwiftUI's `@State` and `@Binding` properties to manage state and handle user interactions.

How to Run the Application
To run the application, open the project in Xcode and select a target device or simulator. 
Then, simply press the `Run` button (or `Cmd + R`) to build and launch the app.

ContentView
The `ContentView` is the main view that houses the `CategoryListView` and `ProductGridView`. 
It manages the currently selected category and handles gestures for pulling to refresh and pulling up to load more categories. 
The state variables `selectedCategory`, `dragOffset`, and `isLastItemVisible` are used to track user interactions and update the UI accordingly.

CategoryListView
The `CategoryListView` displays a list of categories on the left side of the screen. Users can select a category to view its products. 
Each category is displayed with an associated image, fetched from a URL, and the selected category is highlighted. 
The `selectedCategory` binding allows the view to update the main content when a new category is selected.

ProductItemView
The `ProductItemView` represents an individual product in the product grid. It shows the product's image, name, price, weight, and discount. 
The "ADD" button is styled with a green border and text, allowing users to add the item to their cart. 
The `AsyncImage` is used to load the product image from a URL, with a placeholder displayed while the image loads.

ProductGridView
The `ProductGridView` displays a grid of products for the selected category. 
It uses a `LazyVGrid` to efficiently manage the display of multiple products. 
The grid supports pull-to-refresh to load previous categories and pull-up-to-refresh to load the next category. 
The `isLastItemVisible` binding is used to determine when the last product in the grid is visible, which triggers the pull-up action.

ProductDetails
The `ProductDetails` file contains the `Product` struct and the `generateProducts(for:)` function. 
The `Product` struct defines the properties of a product, such as name, price, weight, image URL, and discount. 
The `generateProducts(for:)` function returns an array of products for a given category. This function is used by `ProductGridView` to populate the grid with relevant products.

Dependencies
The application uses SwiftUI, which is available in Xcode 11 and later. There are no external dependencies or libraries required to run this application.
