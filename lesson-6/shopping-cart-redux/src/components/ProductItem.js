import React from "react";
import { addToCart } from "../actions";
import { getVisibleProducts } from "../reducers/products";
import ProductItem from "./ProductItem";
import { useSelector, useDispatch } from "react-redux";

const ProductsList = () => {
  const products = useSelector((state) => getVisibleProducts(state.products));

  const dispatch = useDispatch();
  const dispatchCheckout = (id) => dispatch(addToCart(id));

  return (
    <div>
      <h3>Products</h3>
      {products.map((product) => (
        <ProductItem
          key={product.id}
          product={product}
          onAddToCartClicked={() => dispatchCheckout(product.id)}
        />
      ))}
    </div>
  );
};

export default ProductsList;
