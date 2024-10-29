import { useEffect } from 'react';
import { Routes, Route, useLocation } from 'react-router-dom';

import Loader from 'components/Loader';
import Filter from 'components/Filter';
import Products from 'components/Products';
import Cart from 'components/Cart';
import ProductDetails from 'components/ProductDetails'; // Add this import for the detail page
import Header from 'components/Header'; // Import the Header component

import { useProducts } from 'contexts/products-context';

import * as S from './style';

function App() {
  const { isFetching, products, fetchProducts } = useProducts();
  const currentLocation = useLocation();  // Renamed variable to avoid conflicts

  useEffect(() => {
    fetchProducts();
  }, [fetchProducts]);

  const isProductDetailPage = currentLocation.pathname.startsWith('/product/');


  return (
    <S.Container>
      {isFetching && <Loader />}
      <Header />
      <S.TwoColumnGrid>
        {!isProductDetailPage && (
          <S.Side>
            <Filter />
          </S.Side>
        )}
        <S.Main>
          {!isProductDetailPage && <S.MainHeader>
            <p>找到 {products?.length} 項商品</p>
          </S.MainHeader>}
          <Routes>
            <Route path="/" element={<Products products={products} />} />
            <Route path="/product/:id" element={<ProductDetails />} />
          </Routes>
        </S.Main>
      </S.TwoColumnGrid>
      <Cart />
    </S.Container>
  );
}

export default App;
