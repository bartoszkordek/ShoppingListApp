//
//  ContentView.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import SwiftUI
import Combine

struct ShoppingListView: View {
    @State private var shoppingList = ShoppingList();
    @State private var addedProductName: String = "";
    @State private var addedProductUnits: String = "0";
    //@State private var isChecked: Bool[] = shoppingList.getShoppingList()[0];
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter product name", text: $addedProductName)
                    .padding();
                TextField("Units", text: $addedProductUnits)
                    .keyboardType(.numberPad)
                    .onReceive(Just(addedProductUnits)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.addedProductUnits = filtered
                        }
                    }
                    .padding();
                
                List {
                    ForEach(shoppingList.getShoppingList(), id: \.self) { product in
                        var isChecked = product.getChecked();
                        HStack{
                            Text(product.getName());
                            Text(String(product.getUnits()));
                            Text(String(isChecked));
   
                            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                                .foregroundColor(isChecked ? Color(UIColor.systemBlue) : Color.secondary)
                                .onTapGesture {
                                    isChecked.toggle();
                                    updateChecked(productId: product.id, isChecked: isChecked);
                                };
                        }
                    }
                }
                .navigationBarTitle(Text("Products"))
                
                .navigationBarItems(trailing: Button(action: {
                    self.addRow(name: addedProductName, units: addedProductUnits);
                }) {
                    Image(systemName: "plus")
                })
            }
            
        }
    }
    
    private func addRow(name: String, units: String) {
        if(isProductNameEmpty(productName: name)) {return;}
        self.shoppingList.addProduct(product: Product(name: name, units: (Int(units) ?? 0)));
        addedProductName = "";
        addedProductUnits = "";
        
    }
    
    private func updateChecked(productId: UUID, isChecked: Bool){
        self.shoppingList.updateChecked(productId: productId, isChecked: isChecked);
    }
}

struct ShoppingListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListView()
    }
}

private func isProductNameEmpty(productName: String) -> Bool {
    if(productName == nil || productName.isEmpty){ return true;}
    return false;
}
