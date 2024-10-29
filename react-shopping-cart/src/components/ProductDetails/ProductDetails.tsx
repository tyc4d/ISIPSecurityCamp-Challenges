import { useEffect, useState, KeyboardEvent } from 'react';
import { useParams } from 'react-router-dom';
import formatPrice from 'utils/formatPrice';
import { IProduct } from 'models';
import { getProductDetail } from 'services/product_detail';
import { useCart } from 'contexts/cart-context';
import * as S from './style';

const ProductDetails = () => {
  const { id } = useParams<{ id: string }>();
  const [product, setProduct] = useState<IProduct | null>(null);
  const [loading, setLoading] = useState(true);
  const { openCart, addProduct } = useCart();

  useEffect(() => {
    const fetchProductDetail = async () => {
      if (id) {
        try {
          const productData = await getProductDetail(Number(id));
          setProduct(productData);
        } catch (error) {
          console.error("Failed to fetch product details", error);
        } finally {
          setLoading(false);
        }
      }
    };

    fetchProductDetail();
  }, [id]);

  if (loading) return <p>載入中 ...</p>;
  if (!product) return <p>沒有找到您所指定的商品.</p>;

  const {
    sku,
    title,
    price,
    installments,
    currencyId,
    currencyFormat,
    isFreeShipping,
    released,
    description,
    availableSizes,
  } = product;

  const formattedPrice = formatPrice(price, currencyId);
  let productInstallment;

  if (installments) {
    const installmentPrice = price / installments;
    productInstallment = (
      <S.Installment>
        <span>or {installments} x</span>
        <b>
          {currencyFormat}
          {formatPrice(installmentPrice, currencyId)}
        </b>
      </S.Installment>
    );
  }

  const handleAddProduct = () => {
    addProduct({ ...product, quantity: 1 });
    openCart();
  };

  const handleAddProductWhenEnter = (event: KeyboardEvent) => {
    if (event.key === 'Enter' || event.code === 'Space') {
      addProduct({ ...product, quantity: 1 });
      openCart();
    }
  };

  return (
    <S.Container onKeyUp={handleAddProductWhenEnter} tabIndex={1}>
      {isFreeShipping && <S.Stopper>免運費</S.Stopper>}
      <S.ProductImage sku={sku} /> {/* Removed alt property */}
      <S.Title>{title}</S.Title>
      <p>{description}</p>
      <S.Price>
        <S.Val>
          <small>{currencyFormat}</small>
          <b>{formattedPrice.substring(0, formattedPrice.length - 3)}</b>
          <span>{formattedPrice.substring(formattedPrice.length - 3)}</span>
        </S.Val>
        {productInstallment}
      </S.Price>
      {(
        <S.BuyButton onClick={handleAddProduct} tabIndex={-1}>
          加入購物車
        </S.BuyButton>
      )}
      <p>可供選擇的尺寸: {availableSizes ? availableSizes.join(", ") : "N/A"}</p>
    </S.Container>
  );
};

export default ProductDetails;
