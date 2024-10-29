import axios from 'axios';
import { IProduct } from 'models';
const apiServer = process.env.REACT_APP_API_SERVER;

export const getProductDetail = async (id: number): Promise<IProduct | null> => {
  const response = await axios.get<{ products: IProduct[] }>(`${apiServer}/product/${id}`);
  const product = response.data.products?.[0] || null; // Access the first item in the products array
  return product;
};
